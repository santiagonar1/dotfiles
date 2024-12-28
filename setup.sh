#!/usr/bin/env bash

stow .
ln -s $(pwd)/bash/bashrc ~/.bashrc
ln -s $(pwd)/vim/vimrc ~/.vimrc
ln -s $(pwd)/zsh/.zshrc ~/.zshrc
ln -s $(pwd)/starship/starship.toml ~/.config/starship.toml

