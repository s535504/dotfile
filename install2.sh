#!/usr/local/bin/zsh

# install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# zsh plugins
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting


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
pip install --user Pygments #for show code highlight
pip install --user Pillow #for picture

echo "Please restart the terminal and enjoy the power shell"
