#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ARCHIVE=~/.olddotfiles

if [[ ! -d $ARCHIVE ]]; then
    mkdir $ARCHIVE
fi

function link_files {
    if [[ -e $2 && ! -h $2 ]];then
        mv "$2" "$ARCHIVE"
    fi
    if [[ ! -h $2 ]]; then
        ln -s "${BASEDIR}"/"$1" "$2"
    fi
}

# vim
link_files vim/vimrc ~/.vimrc
link_files vim/vim ~/.vim

# zsh
link_files zsh/zshrc ~/.zshrc
link_files zsh/aliasrc ~/.aliasrc
link_files zsh/inputrc ~/.inputrc
link_files zsh/envrc ~/.envrc
link_files zsh/oh-my-zsh ~/.oh-my-zsh
if [[ ! -d ~/.zsh ]]; then
    mkdir ~/.zsh
fi
link_files zsh/custom ~/.zsh/custom

# git
link_files git/gitconfig ~/.gitconfig

