#!/usr/bin/bash

if [ ! -e /usr/share/xsessions/[rR]atpoison.desktop ]; then
    sudo cp ${HOME}/dotfiles/init/assets/ratpoison.desktop /usr/share/xsessions/
fi

