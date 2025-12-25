#!/usr/bin/env bash

stow .
ln -s $(pwd)/bash/bashrc ~/.bashrc
ln -s $(pwd)/vim/vimrc ~/.vimrc
ln -s $(pwd)/zsh/.zshrc ~/.zshrc
ln -s $(pwd)/starship/starship.toml ~/.config/starship.toml
ln -s $(pwd)/git/gitconfig ~/.gitconfig
ln -s $(pwd)/git/gitconfig-tum ~/.gitconfig-tum
ln -s $(pwd)/ideavim/ideavimrc ~/.ideavimrc

