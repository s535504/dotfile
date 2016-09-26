#!/bin/bash

# install xcode command tool
xcode-select --install

# install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# brew
brew update

brew install zsh
brew install tmux
brew install git
brew install reattach-to-user-namespace
brew install mercurial
brew install vim
brew install rmtrash
brew install ctags
brew install ffmpeg
brew install python3
brew install apktool
brew install dex2jar
brew install p7zip

brew cleanup --force
brew prune
brew doctor

# cask
brew tap caskroom/cask

brew cask install google-chrome
brew cask install skype
brew cask install vlc
brew cask install iterm2
brew cask install keka
brew cask install java
brew cask install jdownloader
brew cask install filezilla
brew cask install hex-fiend
brew cask install appcleaner
brew cask install sublime-text
brew cask install bettertouchtool
brew cask install smoothmouse
brew cask install sourcetree
brew cask install evernote
brew cask install spotify
brew cask install google-drive
brew cask install dropbox
brew cask install teamviewer
brew cask install vmware-fusion
brew cask install messenger
brew cask install jd-gui
brew cask install docker
brew cask install daisydisk
brew cask install dolphin

brew cask cleanup
brew cask doctor

# change default shell
chsh -s /usr/local/bin/zsh

# install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# zsh plugins
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# set dotfile
cp .zshrc ~/
cp .vimrc ~/
cp .tmux.conf ~/
cp .gemrc ~/
cp .gitconfig ~/
cp .gitignore_global ~/

# set vim
mkdir -p ~/.vim/colors
cp Tomorrow-Night-Bright.vim ~/.vim/colors/
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
