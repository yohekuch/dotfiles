#!/bin/bash

set -eu

LINK=${HOME}/dotfiles/deploy/foo

for dtfile in ${LINK}/.??*
do ln -sf ${dtfile} ${HOME}/$(basename ${dtfile})
done
