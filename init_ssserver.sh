#!/bin/sh

pip install shadowsocks

nohup ssserver -c /etc/shadowsocks.json 2>&1 > /var/log/ss.log &

iptables -I INPUT -p tcp  --dport 8080  -j  ACCEPT
iptables -I INPUT -p udp  --dport 8080  -j  ACCEPT
