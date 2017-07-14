#!/bin/bash
#########################################################################
# Author: lincolnlin
# Created Time: Thu Nov 10 07:10:00 2016
# File Name: init_python2.7.sh
# Description: 
#########################################################################

set -e 

yum groupinstall -y "Development tools"
yum install -y python-devel zlib-devel bzip2-devel ncurses-devel readline-devel
pip install setuptools==33.1.1

pip install ipython  ptipython
pip install matppltlib
pip install scipy 
