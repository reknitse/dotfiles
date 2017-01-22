#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Update all submodules
git submodule update --init --recursive
git submodule foreach -q --recursive 'branch="$(git config -f $toplevel/.gitmodules submodule.$name.branch)"; git checkout $branch'
vim +PluginInstall +qall
vim +PluginUpdate +qall

"$BASEDIR"/link_dotfiles.sh

# zip for work
rm "$BASEDIR"/work/dotfiles.zip
zip "$BASEDIR"/work/dotfiles.zip vim zsh work/fonts link_dotfiles.sh -r
