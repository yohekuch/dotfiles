#!/bin/bash

# Update repository
yes | sudo apt-get update
yes | sudo apt-get upgrade

# install tools
yes | sudo apt-get install build-essential
yes | sudo apt-get install linux-headers-generic-pae
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

