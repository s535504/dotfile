#!/bin/bash

# install xcode command tool
xcode-select --install

# install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# check brew
brew update

# brew install
brew install zsh
brew install tmux
brew install git
brew install reattach-to-user-namespace
brew install mercurial
brew install vim
brew install rmtrash
brew install ctags
brew install ffmpeg
brew install irssi
brew install python
brew install python3
brew install nmap
brew install apktool
brew install dex2jar
brew install caskroom/cask/brew-cask

# cask install
brew cask install google-chrome
brew cask install android-file-transfer
brew cask install firefox
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

# change default shell
chsh -s /usr/local/bin/zsh

# checkdone
brew cleanup
brew prune
brew doctor

echo "please restart terminal and run install2.sh."
