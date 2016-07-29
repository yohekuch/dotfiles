#!/bin/bash

# Update repository
yes | sudo apt-get update
yes | sudo apt-get upgrade

# install tools
yes | sudo apt-get install gnome-terminal
yes | sudo apt-get install vim
yes | sudo apt-get install ratpoison
yes | sudo apt-get install conky
yes | sudo apt-get install trayer
yes | sudo apt-get install zsh
yes | sudo apt-get install git
yes | sudo apt-get install curl

