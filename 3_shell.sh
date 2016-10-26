#!/bin/bash

# change default shell
chsh -s /usr/local/bin/zsh

# install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# zsh plugins
git clone git://github.com/zsh-users/zsh-autosuggestions --depth 1 ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git --depth 1 ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# set dotfile
cp .zshrc ~/
cp .vimrc ~/
mkdir -p ~/.config/nvim
ln ~/.vimrc ~/.config/nvim/init.vim
cp .tmux.conf ~/
cp .gemrc ~/
cp .gitconfig ~/
cp .gitignore_global ~/

# set vim
pip install neovim
pip3 install neovim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall +q +UpdateRemotePlugins +q
