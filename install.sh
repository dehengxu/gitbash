#!/usr/bin/env bash

path="${HOME}/.gitbash"
if [ ! -d ${path} ]; then
    git clone https://github.com/xudeheng/gitbash.git  ${path}
    echo "git clone https://github.com/xudeheng/gitbash.git  ${path}"
fi

filename="${HOME}/.bash_profile"
r=$(find ${filename} | xargs grep "source ${HOME}/.gitbash/mygit.rc")
echo ${r}

if [ -z "$r" ];then
    echo "Found ${HOME}/.bash_profile!";
    echo 'source ${HOME}/.gitbash/mygit.rc' >> "${filename}"
else
    echo "Has already install!"
fi

filename="${HOME}/.bashrc"
r=$(find ${filename} | xargs grep "source ${HOME}/.gitbash/mygit.rc")
echo ${r}

if [ -z "$r" ];then
    echo "Found ${HOME}/.bashrc!";
    echo 'source ${HOME}/.gitbash/mygit.rc' >> "${filename}"
else
    echo "Has already install!"
fi

filename="${HOME}/.zshrc"
r=$(find ${filename} | xargs grep "source ${HOME}/.gitbash/mygit.rc")
echo ${r}

if [ -z "$r" ];then
    echo "Found ${HOME}/.zshrc!";
    echo 'source ${HOME}/.gitbash/mygit.rc' >> "${filename}"
else
    echo "Has already install!"
fi


source "${HOME}/.gitbash/mygit.rc"
echo "source $HOME/.gitbash/mygit.rc"

