#!/usr/bin/bash

if [ ! -e /usr/share/xsessions/[rR]atpoison.desktop ]; then
    sudo cp ${DOTPATH}/init/assets/ratpoison.desktop /usr/share/xsessions/
fi

