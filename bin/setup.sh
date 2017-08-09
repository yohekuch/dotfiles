#!/bin/bash

set -eu

export DOTPATH=$HOME/dotfiles
export DOTFILES_GITHUB_REPO=https://github.com/yohekuch/dotfiles.git

# Update repository
yes | sudo apt-get update
yes | sudo apt-get upgrade

# Install basic packages.
yes | sudo apt-get install build-essential
yes | sudo apt-get install rxvt-unicode-256color
yes | sudo apt-get install gnome-terminal
yes | sudo apt-get install vim
yes | sudo apt-get install ratpoison
yes | sudo apt-get install xcompmgr
yes | sudo apt-get install nitrogen
yes | sudo apt-get install conky
yes | sudo apt-get install trayer
yes | sudo apt-get install zsh
yes | sudo apt-get install git
yes | sudo apt-get install curl
yes | sudo apt-get install w3m
yes | sudo apt-get install w3m-img
yes | sudo apt-get install tree
yes | sudo apt-get install stow
yes | sudo apt-get install fcitx-mozc
yes | sudo apt-get install emacs-mozc-bin

is_command_exists() {
    which "$1" >/dev/null 2>&1
    return $?
}

clone_from_github() {
    if [ -d "$DOTPATH" ]; then
        (cd "$DOTPATH" && git pull --rebase)
    else
        git clone --recursive "$DOTFILES_GITHUB_REPO" "$DOTPATH"
    fi
}

clone_from_github

cd $DOTPATH

# Deploy -- Create all the dotfile symlinks in home directory.
make link

# Init -- Install packages and initial setup.
make init
