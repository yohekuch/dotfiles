#!/bin/bash

INIT_DIR=${HOME}/dotfiles/init

for init_file in ${INIT_DIR}/init_*.sh; do
    bash ${init_file}
done
