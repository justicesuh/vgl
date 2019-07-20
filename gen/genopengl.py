import os

import requests
from lxml import etree


class Group():
    def __init__(self, name, enums):
        self.name = name
        self.enums = enums

    def __repr__(self):
        return self.name


class Registry():
    def __init__(self, url):
        self.url = url
        self.filename = url.rsplit('/', 1)[-1]
        self.groups = []

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

        comments = root.xpath('//comment()')
        for c in comments:
            p = c.getparent()
            p.remove(c)

        for element in root.getchildren():
            if element.tag == 'groups':
                for group in element.getchildren():
                    self.groups.append(Group(
                        group.attrib['name'],
                        [enum.attrib['name'] for enum in group.getchildren()]
                    ))


if __name__ == '__main__':
    registry = Registry('https://raw.githubusercontent.com/KhronosGroup/OpenGL-Registry/master/xml/gl.xml')
    registry.download()
    registry.parse()
