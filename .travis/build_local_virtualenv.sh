#!/usr/bin/env bash
# mkdir travis27
# cd travis27/
# virtualenv python2.7
# source python2.7/bin/activate
git clone https://github.com/ukBaz/python-bluezero
cd python-bluezero/
git checkout test_coverage
# cd ..
.travis/install_dbus.sh
.travis/install_dbusmock.sh
pip install pycodestyle
pip install coverage
pip install codeclimate-test-reporter

# deactive
