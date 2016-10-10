#!/bin/bash

brew update

brew install git
brew install zsh
brew install tmux
brew install python
brew install python3
brew install reattach-to-user-namespace
brew install neovim/neovim/neovim
brew install rmtrash
brew install ctags
brew install ffmpeg
brew install p7zip
brew install apktool
brew install dex2jar

brew cleanup --force
brew prune
brew doctor
