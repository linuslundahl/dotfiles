#!/bin/sh

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# shellcheck disable=SC2034,SC2039
SPACESHIP_PROMPT_ORDER=(
  time
  git
  node
  golang
  php
  # ruby
  # xcode
  # swift
  # docker
  # venv
  # pyenv
  jobs
  battery
  exec_time
  exit_code
  line_sep
  vi_mode
  user
  host
  dir
  char
)

# shellcheck disable=SC2034
# SPACESHIP_CHAR_SYMBOL='⚡'
# shellcheck disable=SC2034
SPACESHIP_BATTERY_SHOW=true
# shellcheck disable=SC2034
SPACESHIP_PROMPT_PREFIXES_SHOW=true
# shellcheck disable=SC2034
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=true
# shellcheck disable=SC2034
SPACESHIP_TIME_SHOW=true
# shellcheck disable=SC2034
SPACESHIP_EXIT_CODE_SHOW=true
# shellcheck disable=SC2034
SPACESHIP_DIR_PREFIX=''
# shellcheck disable=SC2034
SPACESHIP_EXEC_TIME_ELAPSED='1'
