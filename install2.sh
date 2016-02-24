#!/usr/local/bin/zsh

# install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# zshcomplete
#git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions

#set dotfile
cp .zshrc ~/
cp .vimrc ~/
cp .tmux.con ~/
cp .gemrc ~/
cp .gitconfig ~/

#set vim
mkdir ~/.vim/colors
cp Tomorrow-Night-Bright.vim ~/.vim/colors/

#python
mkdir ~/.pip
sudo easy_install pip
pip install --user ipython
pip install --user pwntools
pip install --user --upgrade capstone
pip install --user hashid
pip install --user xortool

echo "Please restart the terminal and enjoy the power shell"
