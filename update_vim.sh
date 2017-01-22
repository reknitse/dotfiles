#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

plugin_dir="$BASEDIR/vim/vim/bundle"
if [[ ! -d "$plugin_dir" ]]; then
    mkdir "$plugin_dir"
fi

function update_dir {
    DIR="$plugin_dir/$(cut -d '/' -f 2 <<< $1)"
    if [[ -d "$DIR" ]];then
        rm "$DIR" -rf
    fi
    git clone "https://github.com/$1" "$DIR"
    rm "$DIR"/.git -rf
}

update_dir tpope/vim-pathogen
rm -rf "$plugin_dir/../autoload"
mv "$plugin_dir/vim-pathogen/autoload" "$plugin_dir/../"
rm -rf "$plugin_dir/vim-pathogen"
update_dir easymotion/vim-easymotion
update_dir vim-scripts/restore_view.vim
update_dir Yggdroot/indentLine
update_dir scrooloose/syntastic
update_dir tomtom/tcomment_vim
update_dir tpope/vim-surround
update_dir vim-airline/vim-airline
update_dir altercation/vim-colors-solarized
update_dir sjl/badwolf
update_dir tpope/vim-fugitive
