#!/bin/bash

INIT_FILES=${HOME}/dotfiles/init

for init_file in ${INIT_FILES}/init_*.sh; do
    source ${init_file}
done
