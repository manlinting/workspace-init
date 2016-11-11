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

wget http://www.python.org/ftp/python/2.7.12/Python-2.7.12.tgz 
tar -xzvf Python-2.7.12.tgz
cd Python-2.7.12
./configure --prefix=/usr/local/python27 --enable-shared
make
make install

#修改系统python版本
mv /usr/bin/python /usr/bin/python2.6 #备份2.6
ln -s /usr/local/python27/bin/python /usr/bin/python
lns -s /usr/bin/python /usr/bin/python2.7

#加上python库路径
echo "/usr/local/python27/lib/" > /etc/ld.so.conf.d/python.conf
ldconfig


#修改yum脚本
sed  -i '1s/python/python2.6/' /usr/bin/yum

#安装pip
wget https://bootstrap.pypa.io/get-pip.py

#安装其它软件 
pip install ipython  ptipython

ln -s /usr/local/python27/bin/ptipython /usr/bin/

rm -rf Python-2.7.12*   get-pip.py
