#!/bin/bash
#########################################################################
# Author: lincolnlin
# Created Time: Thu Nov 10 03:27:23 2016
# File Name: init_git.sh
# Description: 
#########################################################################

ssh-keygen -t rsa -b 4096 -C "lincolnlin@vip.qq.com"


eval "$(ssh-agent -s)"


ssh-add ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub


echo "put the content to https://github.com/settings/ssh"
