#!/bin/bash
#########################################################################
# Author: lincolnlin
# Created Time: Sun 22 Nov 2015 04:22:57 AM EST
# File Name: init_vim.sh
# Description: 
#########################################################################

. "../func-common.sh"

logmsg "$0 STARTED"

yum install vim 

cp .vimrc ~/

git clone https://github.com/gmarik/vundle.git  ~/.vim/bundle/vundle

vim +BundleInstall +qall
vim +PluginInstall

cp ~/.vim/bundle/vim-colorschemes/colors/ -rf ~/.vim/

#logmsg "wait for BundleInstall"
#wait

logmsg "$0 END"


