#!/bin/bash

# Find the current directory
dir=`pwd`

# Backup directory
olddir=~/dotfiles_old

# Create dotfiles_old in home directory
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# List of files to backup
oldfiles=".zshrc .gitignore .gitconfig .editorconfig .jshintrc .scss-lint.yml .shuttle.json"

# Backup old files
for file in $oldfiles; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/$file ~/dotfiles_old/
done

# List of files to symlink
newfiles="zsh/zshrc git/gitignore git/gitconfig config/editorconfig config/jshintrc config/scss-lint.yml config/shuttle.json"

# Create symblinks
for file in $newfiles; do
  echo "Creating symlink to $file in home directory."
  read symdir symname <<<$(IFS=":"; echo $file)
  ln -s $dir/$file ~/.$symname
done

echo source $dir/zsh/.zshrc >> ~/.zshrc

dir=`pwd`

echo "echo Include $dir/apache/apache.conf >> /etc/apache2/httpd.conf" | sudo sh
