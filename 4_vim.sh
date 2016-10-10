#!/bin/bash

# set vim
pip install neovim
pip3 install neovim
git clone https://github.com/Shougo/neobundle.vim --depth 1 ~/.vim/bundle/neobundle.vim
nvim -c "NeoBundleInstall" -c "q"
