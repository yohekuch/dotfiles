#!/bin/sh

set -eu

setup() {
    dotfiles=$HOME/dotfiles
    account=yohekuch
    repository=dotfiles

    has() {
        type "$1" >/dev/null 2>&1
    }

    symlink() {
    }

    if [ -d "$dotfiles" ]; then
        (cd "$dotfiles" && git pull --rebase)
    else
        git clone https://github.com/$account/$repository "$dotfiles"
    fi

    has ratpoison && ln -sf "$dotfiles/.ratpoisonrc" "$HOME/.ratpoisonrc"
    has conky && ln -sf "$dotfiles/.conkyrc" "$HOME/.conkyrc"
    has vim && ln -sf "$dotfiles/.vimrc" "$HOME/.vimrc"
}

setup

