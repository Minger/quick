#!/bin/bash

echo adding deadsnakes repository for Python 2.5 for Ubuntu 10.10

sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install python2.5

sudo apt-get install python2.5-dev
sudo apt-get install libjpeg62-dev
sudo easy_install-2.5 pil


# apt-get install libssl-dev libbluetooth-dev
# wget http://pypi.python.org/packages/source/s/ssl/ssl-1.15.tar.gz
# tar xzf ssl-1.15.tar.gz
# cd ssl-1.15/
# python2.5 setup.py install
