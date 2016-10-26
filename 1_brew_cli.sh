#!/bin/bash

brew update

brew install ctags
brew install ffmpeg
brew install git
brew install reattach-to-user-namespace
brew install neovim/neovim/neovim
brew install p7zip
brew install python
brew install python3
brew install rmtrash
brew install tmux
brew install zsh

brew cleanup --force
brew prune
brew doctor
