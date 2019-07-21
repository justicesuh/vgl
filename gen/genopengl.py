import os

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
    def __init__(self, name, _type, group, _len):
        self.name = name
        self._type = _type
        self.group = group
        self._len = _len

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
                    for e in command.getchildren():
                        c = Command()
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
                            _type = None
                            group = None
                            _len = None
                            if 'group' in e.attrib:
                                _type = e[0].text
                                group = e.attrib['group']
                            elif 'len' in e.attrib:
                                _type = e[0].text + '*'
                                _len = e.attrib['len']
                            else:
                                _type = e[0].text
                            c.parameters.append(Parameter(name, _type, group, _len))
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


    def generate(self):
        versions = list(map(lambda x: x.version, self.features))
        if self.version not in versions:
            raise Exception('OpenGL {} does not exist'.format(self.version))

        for feature in self.features:
            if feature.version > self.version:
                break

            version_str = 'gl{}'.format(str(feature.version).replace('.', ''))
            _dir = '../vgl/opengl/{}'.format(version_str)
            if not os.path.exists(_dir):
                os.makedirs(_dir)

            vpath = '{}/{}.v'.format(_dir, version_str)
            with open(vpath, 'w') as v:
                v.write('module {}\n\n'.format(version_str))

                v.write('import const (\n')
                for enum in feature.enums:
                    v.write('\t{}\n'.format(enum))
                v.write(')\n')

                for command_str in feature.commands:
                    command = list(filter(lambda x: x.name == command_str, self.commands))[0]
                    v.write('\npub fn {} '.format(command.name))
                    if command.ret == 'void':
                        v.write('{\n')
                    else:
                        v.write('{} {{\n'.format(command.ret))
                    v.write('}\n')


if __name__ == '__main__':
    url = 'https://raw.githubusercontent.com/KhronosGroup/OpenGL-Registry/master/xml/gl.xml' 
    registry = Registry(url, 1, 0)
    registry.download()
    registry.parse()
    registry.generate()
