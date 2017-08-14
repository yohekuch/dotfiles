#!/bin/bash

set -eu

LINK=${DOTPATH}/link

for dtfile in ${LINK}/.??*; do
    ln -sf ${dtfile} ${HOME}/$(basename ${dtfile})
done

echo "Link is complete."
