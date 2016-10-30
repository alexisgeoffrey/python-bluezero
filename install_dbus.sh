#!/usr/bin/env bash
set -ex

pwd
which python
find . -name site-packages

if [ "$TRAVIS_PYTHON_VERSION" == "2.7" ]; then
    apt-get download python-dbus
    dpkg -x python-dbus*.deb ./dbus
    mv ./dbus/usr/lib/python2.7/dist-packages/* ./python_2.7/lib/python2.7/site-packages/
    mv ./dbus/usr/share python_2.7/

    apt-get download python-gi
    dpkg -x python-gi*.deb ./gi
    mv ./gi/usr/lib/python2.7/dist-packages/* ./python_2.7/lib/python2.7/site-packages/
fi

if [ "$TRAVIS_PYTHON_VERSION" == "3.4" ]; then
    apt-get download python3-dbus
    dpkg -x python3-dbus*.deb ./dbus
    mv ./dbus/usr/lib/python3/dist-packages/* ./python_3.4/lib/python3.4/site-packages/
    mv ./dbus/usr/share python_3.4/

    apt-get download python3-gi
    dpkg -x python3-gi*.deb ./gi
    mv ./gi/usr/lib/python3/dist-packages/* ./python_3.4/lib/python3.4/site-packages/
fi
