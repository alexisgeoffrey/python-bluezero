#!/usr/bin/env bash
set -ex

SITE_PACKAGES=`pip --version | awk '{ print $4 }'`
SHARE_DIR=`echo ${SITE_PACKAGES%/*/*/*/*}`

if [ "$TRAVIS_PYTHON_VERSION" == "2.7" ]; then
    apt-get download python-dbus
    dpkg -x python-dbus*.deb ./dbus
    mv ./dbus/usr/lib/python2.7/dist-packages/* $SITE_PACKAGES/
    mv ./dbus/usr/share $SHARE_DIR/

    apt-get download python-gi
    dpkg -x python-gi*.deb ./gi
    mv ./gi/usr/lib/python2.7/dist-packages/* $SITE_PACKAGES/
fi

if [ "$TRAVIS_PYTHON_VERSION" == "3.4" ]; then
    apt-get download python3-dbus
    dpkg -x python3-dbus*.deb ./dbus
    mv ./dbus/usr/lib/python3/dist-packages/* $SITE_PACKAGES/
    mv ./dbus/usr/share $SHARE_DIR/

    apt-get download python3-gi
    dpkg -x python3-gi*.deb ./gi
    mv ./gi/usr/lib/python3/dist-packages/* $SITE_PACKAGES/
fi
