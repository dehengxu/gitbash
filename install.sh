#!/usr/bin/env bash

path="${HOME}/.gitbash"

rm -rf ${path}



if [ ! -d ${path} ]; then
    git clone https://github.com/xudeheng/gitbash.git  ${path}
    echo "git clone https://github.com/xudeheng/gitbash.git  ${path}"
fi

shell_profiles=".bash_profile .bashrc .zshrc"

function add_line() {
    filename=$1
    text=$2
    # r=$(find ${filename} | xargs grep 'source ${HOME}/.gitbash/mygit.rc')
    r=$(find ${filename} | xargs grep text)
    if [[ -z $r ]];then
        echo $text >> $filename
    else
        echo text , has already installed!
    fi
}

for shell_profile in $shell_profiles;do
    filename=$HOME/$shell_profile

    add_line $filename 'source ${HOME}/.gitbash/mygit.rc'
    add_line $filename 'export PATH=$HOME/.gitbash:$PATH'

    # r=$(find ${filename} | xargs grep 'source ${HOME}/.gitbash/mygit.rc')
    # # echo ${r}

    # if [ -z "$r" ];then
    #     echo "Found ${filename} !";
    #     echo 'source ${HOME}/.gitbash/mygit.rc' >> "${filename}"
    # else
    #     echo "Has already install!"
    # fi



done


# filename="${HOME}/.bash_profile"
# r=$(find ${filename} | xargs grep 'source ${HOME}/.gitbash/mygit.rc')
# echo ${r}

# if [ -z "$r" ];then
#     echo "Found ${HOME}/.bash_profile!";
#     echo 'source ${HOME}/.gitbash/mygit.rc' >> "${filename}"
# else
#     echo "Has already install!"
# fi

# filename="${HOME}/.bashrc"
# r=$(find ${filename} | xargs grep 'source ${HOME}/.gitbash/mygit.rc')
# echo ${r}

# if [ -z "$r" ];then
#     echo "Found ${HOME}/.bashrc!";
#     echo 'source ${HOME}/.gitbash/mygit.rc' >> "${filename}"
# else
#     echo "Has already install!"
# fi

# filename="${HOME}/.zshrc"
# r=$(find ${filename} | xargs grep 'source ${HOME}/.gitbash/mygit.rc')
# echo ${r}

# if [ -z "$r" ];then
#     echo "Found ${HOME}/.zshrc!";
#     echo 'source ${HOME}/.gitbash/mygit.rc' >> "${filename}"
# else
#     echo "Has already install!"
# fi


# source "${HOME}/.gitbash/mygit.rc"
echo "source $HOME/.gitbash/mygit.rc"
echo 'export PATH=$HOME/.gitbash:$PATH'

# source ${HOME}/.zshrc
# source ${HOME}/.bashrc
# source ${HOME}/.bash_profile
