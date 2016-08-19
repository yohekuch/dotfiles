#!/bin/bash

set -eu

for font_file in ${DOTPATH}/init/assets/*.tt?; do
    sudo cp ${font_file} /usr/share/fonts/truetype
done

