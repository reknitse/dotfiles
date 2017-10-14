#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd $BASEDIR

# Update all submodules
git submodule update --init --recursive --remote

mkdir -p "$BASEDIR"/vim/vim/pack/plugins
cd "$BASEDIR"/vim/vim/pack/plugins
ln -s ../../../links_to_packages/all start
cd "$BASEDIR"

"$BASEDIR"/link_dotfiles.sh

# zip for work
if [[ $1 == "-zip" ]]; then
    rm "$BASEDIR"/work/dotfiles.zip
    zip "$BASEDIR"/work/dotfiles.zip vim zsh work/fonts link_dotfiles.sh -r
fi
