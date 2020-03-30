#!/bin/sh

# Set VSCode as default editor
export EDITOR="code"

# Set PROJECT_DIR to the path where your projects exist.
[ -z "$PROJECT_DIR" ] && export PROJECT_DIR=~/Projects
