import os
import requests
from bs4 import BeautifulSoup


def download_doc(path):
    if os.path.exists(path):
        return
    else:
        os.mkdir(path)

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


def parse_doc(doc):
    data = {
        'fields': [],
        'methods': []
    }
    with open(doc, 'rb') as f:
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

    return data

if __name__ == '__main__':
    path = 'doc'
    classes = [
        'GL11'
    ]

    download_doc(path)

    for c in classes:
        data = parse_doc('{}/{}.html'.format(path, c))
        print(data)
