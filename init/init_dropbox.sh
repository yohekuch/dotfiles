#!/usr/bin/bash

cd ${HOME}/Downloads
if [ ! -d ./.dropbox-dist ]; then
    wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
fi
