#!/bin/sh

export SSH_AUTH_SOCK=/Users/linus/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# cat greeting

# Compile zcompdump, if modified, to increase startup speed.
if [ "$HOME/.zcompdump" -nt "$HOME/.zcompdump.zwc" ]; then
  zcompile "$HOME/.zcompdump"
fi
