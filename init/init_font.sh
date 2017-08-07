#!/bin/bash

set -eu

# Monaco font can be downloaded from these links.
# http://jorrel.googlepages.com/Monaco_Linux.ttf
# http://www.gringod.com/wp-upload/software/Fonts/Monaco_Linux.ttf

FONTSDIR=${HOME}/Downloads/fonts
mkdir -p ${FONTSDIR}

# Monaco_Linux
MONACO_URL="http://jorrel.googlepages.com/Monaco_Linux.ttf"
MONACO_FONT="Monaco_Linux.ttf"
fc-list | grep ${MONACO_FONT} || \
    wget -P ${FONTSDIR} -O ${MONACO_FONT} ${MONACO_URL}

# Install
for font_file in ${FONTSDIR}/*.tt?; do
    sudo cp -f ${font_file} /usr/share/fonts/truetype
done
