#!/bin/sh

# set dotfile
cp .zshrc ~/
cp .vimrc ~/
mkdir -p ~/.config/nvim
ln ~/.vimrc ~/.config/nvim/init.vim
cp .tmux.conf ~/
cp .gemrc ~/
cp .gitconfig ~/
cp .gitignore_global ~/
