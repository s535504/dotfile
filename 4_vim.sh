#!/bin/bash

# set vim
pip install neovim
pip3 install neovim
git clone https://github.com/Shougo/dein.vim.git --depth 1 ~/.vim/dein/repos/github.com/Shougo/dein.vim
nvim +":call dein#install()" +:q
