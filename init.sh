#!/bin/sh 

cp .bash_profile ~/ -f

pip install shadowsocks

ssserver -p 443 -k 504504 -m aes-256-cfb --user nobody -d start
