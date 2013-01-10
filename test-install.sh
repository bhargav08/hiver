#!/bin/bash

tmp=/tmp/hiveenv

set -e

if [ -e $tmp ]; then
    rm -rf $tmp
fi
virtualenv $tmp
. ${tmp}/bin/activate
python setup.py install
cd /tmp
python -m hiver --version
