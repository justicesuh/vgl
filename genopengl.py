import json
import os
import re
import requests
import sys
from bs4 import BeautifulSoup


classes = [
    'GL11'
]

snake = re.compile('((?<=[a-z0-9])[A-Z]|(?!^)[A-Z](?=[a-z]))')

v_type_map = {
    'byte': 'byte',
    'short': 'i16',
    'int': 'int',
    'long': 'i64',
    'float': 'f32',
    'double': 'f64',
    'boolean': 'bool',
    'short[]': '[]i16',
    'int[]': '[]int',
    'long[]': '[]i64',
    'float[]': '[]f32',
    'double[]': '[]f64',
    'boolean[]': '[]bool',
    'java.nio.ByteBuffer': 'voidptr',
    'java.nio.ShortBuffer': 'voidptr',
    'java.nio.IntBuffer': 'voidptr',
    'java.nio.DoubleBuffer': 'voidptr',
    'java.nio.FloatBuffer': 'voidptr',
    'java.lang.String': 'string',
    'PointerBuffer': '*voidptr'
}


def exists(path):
    return os.path.exists(path)


def mkdir(path):
    os.makedirs(path)


def snake_case(name):
    return snake.sub(r'_\1', name).lower()


def exit(msg):
    print(msg)
    sys.exit(0)


def download_doc():
    if exists('doc'):
        return
    else:
        mkdir('doc')

    url = 'https://javadoc.lwjgl.org/org/lwjgl/opengl/'
    opengl = requests.get('{}package-summary.html'.format(url))
    table = BeautifulSoup(opengl.content, 'html.parser').find_all('table', {'class': 'typeSummary'})[1]
    classes = []
    for row in table.find_all('tr', {'class': lambda x: x and x.endswith('Color')}):
        if 'extension' not in row.text:
            a = row.find('a')
            classes.append((a.text, '{}{}'.format(url, a['href'].rsplit('/', 1)[-1])))

    for name, href in classes:
        with open('{}/{}.html'.format(path, name), 'wb') as f:
            f.write(requests.get(href).content)


def parse_doc(c):
    path = 'json/{}.json'.format(c)
    if exists(path):
        with open(path, 'r') as f:
            data = json.load(f)
            return data

    data = {
        'fields': [],
        'methods': []
    }
    with open('doc/{}.html'.format(c), 'rb') as f:
        soup = BeautifulSoup(f.read(), 'html.parser')
        tables = soup.find_all('table', {'class': 'memberSummary'})

        for row in tables[0].find_all('tr', {'class': lambda x: x and x.endswith('Color')}):
            codes = row.find_all('code')
            links = codes[1].find_all('a')
            for link in links:
                data['fields'].append({
                    'name': link.text,
                    'type': codes[0].text.replace('static', '').strip()
                })

        for row in tables[1].find_all('tr', {'class': lambda x: x and x.endswith('Color')}):
            codes = row.find_all('code')
            signature = ' '.join(codes[1].text.replace(u'\u200b', '').replace(u'\xa0', u' ').split())
            name = signature[:signature.index('(')]
            parameters = signature[signature.index('(') + 1:-1]
            data['methods'].append({
                'name': name,
                'parameters': parameters,
                'return': codes[0].text.replace('static', '').strip()
            })

    if not exists('json'):
        mkdir('json')
    with open(path, 'w') as f:
        json.dump(data, f, indent=4)
    return data


def generate(c, data):
    path = 'vgl/{}'.format(c)
    if not exists(path):
        mkdir(path)

    with open('{}/{}.v'.format(path, c), 'w') as f:
        f.write('module {}\n\n'.format(c))

        f.write('import const (\n')
        for field in data['fields']:
            f.write('\t{}\n'.format(field['name']))
        f.write(')\n')

        for method in data['methods']:
            v_name = snake_case(method['name'])
            if v_name[-1] == 'd' and v_name[-2] == '_':
                v_name = v_name[:-2] + 'd'

            if len(method['parameters']) == 0:
                parameters = []
            else:
                parameters = [[p[0], snake_case(p[1])] for p in [n.strip().split(' ') for n in method['parameters'].split(',')]]

            ret = method['return']
            if ret == 'void':
                ret = ''

            f.write('\npub fn {}('.format(v_name))
            v_sig = []
            for p in parameters:
                if p[0] not in v_type_map:
                    exit('{} type conversion does not exist'.format(p[0]))
                v_sig.append('{} {}'.format(p[1], v_type_map[p[0]]))
            f.write(', '.join(v_sig))
            f.write(')')

            if ret:
                f.write(' ')
                if ret not in v_type_map:
                    exit('{} type conversion does not exist'.format(ret))
                vret = v_type_map[ret]
                f.write(vret)
            f.write(' {\n')

            f.write('\t')
            if ret:
                f.write('return ')
            f.write('C.{}('.format(method['name']))
            c_sig = []
            for p in parameters:
                c_sig.append(p[1])
            f.write(', '.join(c_sig))
            f.write(')\n')

            f.write('}\n')


if __name__ == '__main__':
    download_doc()
    for c in classes:
        data = parse_doc(c)
        generate(c, data)
