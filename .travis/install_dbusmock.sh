#!/usr/bin/env bash
set -ex

SITE_PACKAGES=`pip --version | awk '{ print $4 }'`

wget https://github.com/ukBaz/python-dbusmock/archive/bluez_gatt.tar.gz -O dbusmock.tar.gz
tar -xvf dbusmock.tar.gz
mv python-dbusmock*/dbusmock $SITE_PACKAGES/
