import os
import requests
from bs4 import BeautifulSoup

def download_doc():
    url = 'https://javadoc.lwjgl.org/org/lwjgl/opengl/'
    opengl = requests.get('{}package-summary.html'.format(url))
    table = BeautifulSoup(opengl.content, 'html.parser').find_all('table', {'class': 'typeSummary'})[1]
    classes = []
    for row in table.find_all('tr', {'class': lambda x: x and x.endswith('Color')}):
        if 'extension' not in row.text:
            a = row.find('a')
            classes.append((a.text, '{}{}'.format(url, a['href'].rsplit('/', 1)[-1])))

    path = 'doc'
    if not os.path.exists(path):
        os.mkdir(path)
    for name, href in classes:
        with open('{}/{}.html'.format(path, name), 'wb') as f:
            f.write(requests.get(href).content)

if __name__ == '__main__':
    download_doc()
