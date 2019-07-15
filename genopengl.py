import json
import os
import requests
from bs4 import BeautifulSoup


def exists(path):
    return os.path.exists(path)


def mkdir(path):
    os.makedirs(path)

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
            f.write('\npub fn {}('.format(method['name']))
            f.write('{}) {} {{\n'.format(method['parameters'], method['return']))
            f.write('}\n')


if __name__ == '__main__':
    classes = [
        'GL11'
    ]

    download_doc()
    for c in classes:
        data = parse_doc(c)
        generate(c, data)
