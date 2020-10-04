#!/bin/bash

# set -e

# paths to tracked files relative to root
declare -a tracked_file_paths=(
    ".zshrc"
    ".bashrc"
    ".bash_profile"
    ".profile"
    ".tmux.conf"
    ".config/nvim/init.vim"
    ".config/nvim/coc-settings.json"
    ".config/nvim/extra.vim"
    ".config/alacritty/alacritty.yml"
)

REPO_ROOT=$(git rev-parse --show-toplevel)

for rfp in "${tracked_file_paths[@]}"
do
    srcfp="$HOME/$rfp"
    distfp="$REPO_ROOT/linux/configs/$rfp"

    if [ -e $srcfp ]; then
        mkdir -p $(dirname "${distfp}")
        
        echo "copying ~/"$rfp""
        cp "$srcfp" "$distfp"
    fi
done
