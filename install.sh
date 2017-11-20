#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Update all submodules
git submodule update --init --recursive --remote

"$BASEDIR"/link_dotfiles.sh

# zip for work
if [[ $1 == "-zip" ]]; then
    rm "$BASEDIR"/work/dotfiles.zip
    zip "$BASEDIR"/work/dotfiles.zip vim zsh work/fonts link_dotfiles.sh -r
fi
