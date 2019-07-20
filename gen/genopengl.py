import os

import lxml
import requests


def download_registry():
    if os.path.exists('gl.xml'):
        return
    with open('gl.xml', 'wb') as f:
        r = requests.get('https://raw.githubusercontent.com/KhronosGroup/OpenGL-Registry/master/xml/gl.xml')
        f.write(r.content)


def parse_registry():
    pass


if __name__ == '__main__':
    download_registry()
    parse_registry()
