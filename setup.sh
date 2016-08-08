#!/bin/bash

set -eu

# Update repository
yes | sudo apt-get update
yes | sudo apt-get upgrade

# Install basic packages.
yes | sudo apt-get install build-essential
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

is_exists() {
    which "$1" >/dev/null 2>&1
    return $?
}

dl_dotfiles_from_github()

# Deploy -- Download dotfiles from github. And create their symlinks.
make deploy


# initialize
echo "initialize dotfiles?(y/n)"
read ans3
case $ans3 in
    y)
        . init.sh
		;;
    *)
	    ;;
esac

