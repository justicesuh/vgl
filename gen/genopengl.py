import os
import re
import sys

import requests
from lxml import etree


class Group():
    def __init__(self, name, enums):
        self.name = name
        self.enums = enums

    def __repr__(self):
        return self.name


class Enum():
    def __init__(self, name, value):
        self.name = name
        self.value = value

    def __repr__(self):
        return self.name


class Command():
    def __init__(self, name='', ret='void', group=None):
        self.name = name
        self.ret = ret
        self.group = group
        self.parameters = []

    def __repr__(self):
        return self.name


class Parameter():
    def __init__(self, name, type_, group, len_):
        self.name = name
        self.type_ = type_
        self.group = group
        self.len_ = len_

    def __repr__(self):
        return self.name


class Feature():
    def __init__(self, name):
        self.name = name
        self.version = float(name[-3:].replace('_', '.'))
        self.enums = []
        self.commands = []


class Registry():
    def __init__(self, url, major, minor):
        self.url = url
        self.filename = url.rsplit('/', 1)[-1]
        self.version = float('{}.{}'.format(major, minor))
        self.groups = []
        self.enums = []
        self.commands = []
        self.features = []

        self.expression = re.compile('((?<=[a-z0-9])[A-Z]|(?!^)[A-Z](?=[a-z]))')

        self.v_type_map = {
            'GLbyte': 'i8',
            'GLshort': 'i16',
            'GLint': 'int',
            'GLubyte': 'u8',
            'GLushort': 'u16',
            'GLuint': 'u32',
            'GLfloat': 'f32',
            'GLdouble': 'f64',
            'GLenum': 'u32',
            'GLsizei': 'int',
            'GLbitfield': 'u32',
            'GLboolean': 'bool',
            'GLbyte*': '[]i8',
            'GLshort*': '[]i16',
            'GLint*': '[]int',
            'GLubyte*': '[]u8',
            'GLushort*': '[]u16',
            'GLuint*': '[]u32',
            'GLfloat*': '[]f32',
            'GLdouble*': '[]f64',
            'GLboolean*': '[]bool',
            'const void*': 'voidptr',
            'GLchar*': 'string'
        }


    def download(self):
        if os.path.exists(self.filename):
            return

        with open(self.filename, 'wb') as f:
            r = requests.get(self.url)
            f.write(r.content)

    def parse(self):
        with open(self.filename) as f:
            xml = f.read()
        root = etree.fromstring(xml.encode('utf-8'))

        for c in root.xpath('//comment()'):
            c.getparent().remove(c)
        for u in root.xpath('//unused'):
            u.getparent().remove(u)

        for element in root.getchildren():
            if element.tag == 'groups':
                for group in element.getchildren():
                    self.groups.append(Group(
                        group.attrib['name'],
                        [enum.attrib['name'] for enum in group.getchildren()]
                    ))

            if element.tag == 'enums':
                for enum in element.getchildren():
                    self.enums.append(Enum(enum.attrib['name'], enum.attrib['value']))

            if element.tag == 'commands':
                for command in element.getchildren():
                    c = Command()
                    for e in command.getchildren():
                        if e.tag == 'proto':
                            if 'group' in e.attrib:
                                c.group = e.attrib['group']
                            if len(e) == 1:
                                c.name = e[0].text
                                c.ret = e.text.strip()
                            else:
                                c.name = e[1].text
                                c.ret = e[0].text
                        if e.tag == 'param':
                            name = e[-1].text
                            type_ = None
                            group = None
                            len_ = None
                            if 'group' in e.attrib:
                                if len(e) == 2:
                                    type_ = e[0].text
                                else:
                                    type_ = 'const void*'
                                group = e.attrib['group']
                            if 'len' in e.attrib:
                                if len(e) == 2:
                                    type_ = e[0].text + '*'
                                else:
                                    type_ = 'const void*'
                                len_ = e.attrib['len']
                            else:
                                type_ = e[0].text
                            if name == 'type':
                                name = 'type_'
                            c.parameters.append(Parameter(name, type_, group, len_))
                        self.commands.append(c)

            if element.tag == 'feature' and element.attrib['api'] == 'gl':
                feature = Feature(element.attrib['name'])
                for require in element.getchildren():
                    for e in require.getchildren():
                        if e.tag == 'enum':
                            feature.enums.append(e.attrib['name'])
                        if e.tag == 'command':
                            feature.commands.append(e.attrib['name'])
                self.features.append(feature)


    def generate(self, major=None, minor=None):
        versions = list(map(lambda x: x.version, self.features))
        if self.version not in versions:
            raise Exception('OpenGL {} does not exist'.format(self.version))

        for feature in self.features:
            if major is None and minor is None:
                if feature.version > self.version:
                    break
            elif major is None:
                raise Exception('minor version cannot be set without major version')
            elif minor is None:
                bottom = float(major)
                top = float(major + 1)
                if feature.version < bottom or feature.version >= top:
                    continue
            else:
                ver = float('{}.{}'.format(major, minor))
                if feature.version != ver:
                    continue

            version_str = 'gl{}'.format(str(feature.version).replace('.', ''))
            _dir = '../vgl/opengl/{}'.format(version_str)
            if not os.path.exists(_dir):
                os.makedirs(_dir)

            vpath = '{}/{}.v'.format(_dir, version_str)
            with open(vpath, 'w') as v:
                v.write('module {}\n\n'.format(version_str))
                v.write('#flag  -I @VROOT/thirdparty/glad\n')
                v.write('#flag @VROOT/thirdparty/glad/glad.o\n\n')
                v.write('#include <glad.h>\n')
                v.write('import const (\n')
                for enum in feature.enums:
                    v.write('\t{}\n'.format(enum))
                v.write(')\n')
                
                v.write('\npub fn init_glad() int {\n\treturn C.gladLoadGL()\n}\n')
                for command_str in feature.commands:
                    command = list(filter(lambda x: x.name == command_str, self.commands))[0]

                    if len(list(filter(lambda x: '*' in x, [p.type_ for p in command.parameters]))) > 0 or '*' in command.ret:
                        v.write('\n// TODO')
                    vname = self.snake_case(command.name)[3:]
                    v.write('\npub fn {}('.format(vname))

                    vargs = []
                    for parameter in command.parameters:
                        if parameter.type_ not in self.v_type_map:
                            print(command)
                            raise Exception('{} type map not found'.format(parameter.type_))
                        vargs.append('{} {}'.format(parameter.name, self.v_type_map[parameter.type_]))
                    v.write('{}) '.format(', '.join(vargs)))

                    if command.ret == 'void':
                        v.write('{\n')
                    else:
                        if command.ret not in self.v_type_map:
                            raise Exception('{} type map not found'.format(command.ret))
                        v.write('{} {{\n'.format(self.v_type_map[command.ret]))

                    v.write('\t')
                    if command.ret != 'void':
                        v.write('return ')
                    v.write('C.{}('.format(command.name))
                    cargs = []
                    for parameter in command.parameters:
                        arg = parameter.name
                        if parameter.type_ == 'GLchar*':
                            arg += '.str'
                        elif '*' in parameter.type_ and parameter.type_ != 'const void*':
                            arg += '.data'
                        cargs.append(arg)
                    v.write('{})\n'.format(', '.join(cargs)))
                    v.write('}\n')


    def snake_case(self, name):
        return self.expression.sub(r'_\1', name).lower()


if __name__ == '__main__':
    url = 'https://raw.githubusercontent.com/KhronosGroup/OpenGL-Registry/master/xml/gl.xml' 
    registry = Registry(url, 1, 0)
    registry.download()
    registry.parse()
    if len(sys.argv) == 1:
        registry.generate()
    else:
        major, minor = [c for c in sys.argv[1][2:]]
        registry.generate(major, minor)
