#!/bin/sh 
yum install -y telnet lszrz git cmake wget ncurses-devel python-devel


yum install python-setuptools  && easy_install pip
pip install shadowsocks

ssserver -p 443 -k 504504 -m aes-256-cfb --user nobody -d start
