#!/usr/bin/env bash
# mkdir travis27
# cd travis27/
# virtualenv python2.7

git clone https://github.com/ukBaz/python-bluezero
python-bluezero/.travis/install_dbus.sh
python-bluezero/.travis/install_dbusmock.sh
pip install pycodestyle
pip install coverage
pip install codeclimate-test-reporter
git clone https://github.com/ukBaz/python-bluezero

# deactive
