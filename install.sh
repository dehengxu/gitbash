#!/usr/bin/env bash

filename="${HOME}/.bash_profile"
path="${HOME}/.gitbash"
if [ ! -d ${path} ]; then
    git clone https://github.com/xudeheng/gitbash.git  ${path}
    echo "git clone https://github.com/xudeheng/gitbash.git  ${path}"
fi

r=$(find ${filename} | xargs grep "source ${HOME}/.gitbash/mygit.rc")
echo ${r}

if [ -z "$r" ];then
    echo "Found!";
    echo "source ${HOME}/.gitbash/mygit.rc" >> "${filename}"
else
    echo "Has already install!"
fi

source ${HOME}/.gitbash/mygit.rc"
echo "source $HOME/.gitbash/mygit.rc"

