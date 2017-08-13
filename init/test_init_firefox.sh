#!/bin/bash

set -eu

INIT_DIR=${HOME}/dotfiles/init

addons=("adblock-plus/addon-1865-latest.xpi")

for addon in addons; do
    url="https://addons.mozilla.org/firefox/downloads/latest/"${addon}
    bash ${INIT_DIR}/firefox/install_extension.sh ${url}
done
