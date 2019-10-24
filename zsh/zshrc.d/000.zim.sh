#!/bin/sh

export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# shellcheck source=/Users/linus/.zim/init.zsh
[ -f "${ZIM_HOME}/init.zsh" ] && . "${ZIM_HOME}/init.zsh"

zstyle ':vcs_info:git:*:-all-' command =git
