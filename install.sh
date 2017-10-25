#!/bin/bash

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install zsh
brew install zsh

# Install zim
git clone --recursive https://github.com/Eriner/zim.git ${ZDOTDIR:-${HOME}}/.zim

# Link dotfiles
ln -s ~/dotfiles/zsh/zshrc .zshrc
ln -s ~/dotfiles/config/editorconfig .editorconfig
ln -s ~/dotfiles/git/gitignore .gitignore
ln -s ~/dotfiles/git/gitconfig .gitconfig
ln -s ~/dotfiles/config/jshintrc .jshintrc
ln -s ~/dotfiles/config/sass-lint.yml .sass-lint.yml
ln -s ~/dotfiles/config/scss-lint.yml .scss-lint.yml
ln -s ~/.zim/templates/.zlogin .zlogin

# Change login shell to zsh
sudo chsh -s "$(which zsh)" linus

# Install brews, casks and mas apps
brew bundle
