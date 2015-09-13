#!/usr/bin/env bash

filename=~/.bash_profile
path="~/.gitbash"
if [ -e ${path} ]; then
    git clone https://github.com/xudeheng/gitbash.git  ${path}
    echo "git clone https://github.com/xudeheng/gitbash.git  ${path}"
fi

r=$(find ${filename} | xargs grep "source ~/.gitbash/mygit.rc")
echo ${r}

if [ -z "$r" ];then
    echo "Found!";
    echo "source ~/.gitbash/mygit.rc" >> "${filename}"
else
    echo "Has already install!"
fi
