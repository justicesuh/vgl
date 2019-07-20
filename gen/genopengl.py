import os

import requests
from lxml import etree


class Registry():
    def __init__(self, url):
        self.url = url
        self.filename = url.rsplit('/', 1)[-1]

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

        for element in root.getchildren():
            if element.tag == etree.Comment or element.tag == 'comment':
                continue
            print(element.tag)


if __name__ == '__main__':
    registry = Registry('https://raw.githubusercontent.com/KhronosGroup/OpenGL-Registry/master/xml/gl.xml')
    registry.download()
    registry.parse()
