#!/bin/zsh

set -eu

# Clone the repository
if [ ! -d ${HOME}/.zprezto ]; then
    git clone --recursive https://github.com/sorin-ionescu/prezto.git \
		"${ZDOTDIR:-$HOME}/.zprezto"
fi

# Create a new Zsh configuration by copying the Zsh configuration files provided
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -sf "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# Set Zsh as default shell
sudo chsh -s $(which zsh) ${USER}
