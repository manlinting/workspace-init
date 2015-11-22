#!/bin/sh

wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-libev.sh
sh ./shadowsocks-libev.sh 2>&1 | tee shadowsocks-libev.log
