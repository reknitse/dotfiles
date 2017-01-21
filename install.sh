#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ARCHIVE=~/.olddotfiles

if [[ ! -d $ARCHIVE ]]; then
    mkdir $ARCHIVE
fi

function link_me {
    if [[ -e $2 && ! -h $2 ]];then
        mv $2 $ARCHIVE
    fi
    if [[ ! -h $2 ]]; then
        ln -s ${BASEDIR}/$1 $2
    fi
}

# Update all submodules
git submodule update --init --recursive
vim +PluginInstall +qall
vim +PluginUpdate +qall

# vim
link_me vim/vimrc ~/.vimrc
link_me vim/vim ~/.vim

# zsh
link_me zsh/zshrc ~/.zshrc
link_me zsh/aliasrc ~/.aliasrc
link_me zsh/inputrc ~/.inputrc
link_me zsh/envrc ~/.envrc
link_me zsh/oh-my-zsh ~/.oh-my-zsh
if [[ ! -d ~/.zsh ]]; then
    mkdir ~/.zsh
fi
link_me zsh/custom ~/.zsh/custom

# git
link_me git/gitconfig ~/.gitconfig

# zip for work
rm $BASEDIR/work/dotfiles.zip
zip $BASEDIR/work/dotfiles.zip vim zsh work/fonts -r
