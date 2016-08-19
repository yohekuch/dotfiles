#!/bin/bash

INIT_DIR=${HOME}/dotfiles/init

for init_file in ${INIT_DIR}/init_*.sh; do
    source ${init_file}
done

for zsh_init_file in ${INIT_DIR}/zsh_init_*.sh; do
	zsh ${zsh_init_file}
done
