#!/bin/sh

# Paths
export PATH
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="$HOME/go/bin:$PATH"
PATH="/usr/local/opt/go/libexec/bin:$PATH"
PATH="$HOME/dotfiles/bin:$PATH"
PATH="$HOME/dotfiles/apps/bin:$PATH"
PATH="$HOME/.composer/vendor/bin:$PATH"

# Use PHP72
PATH="$(brew --prefix php)/bin:$PATH"

# Go path
export GOPATH=$HOME/go
