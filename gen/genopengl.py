import os

import requests


def download_registry():
    if os.path.exists('gl.xml'):
        return
    with open('gl.xml', 'wb') as f:
        r = requests.get('https://github.com/KhronosGroup/OpenGL-Registry/blob/master/xml/gl.xml')
        f.write(r.content)


if __name__ == '__main__':
    download_registry()
