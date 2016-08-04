#!/usr/bin/bash

if [ ! -e /usr/share/xsessions/[rR]atpoison.desktop ]; then
    sudo cp ~/dotfiles/ratpoison.desktop /uusr/share/xsessions/
fi

