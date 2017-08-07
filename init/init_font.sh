#!/bin/bash

set -eu

# Monaco font can be downloaded from these links.
# http://jorrel.googlepages.com/Monaco_Linux.ttf
# http://www.gringod.com/wp-upload/software/Fonts/Monaco_Linux.ttf

FONTSDIR=${HOME}/Downloads/fonts
mkdir -p ${FONTSDIR}

# Monaco_Linux
wget -P ${FONTSDIR} http://jorrel.googlepages.com/Monaco_Linux.ttf

for font_file in ${FONTSDIR}/*.tt?; do
    sudo cp ${font_file} /usr/share/fonts/truetype
done
