#!/bin/bash

# Install brew
#ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Follow instructions to install XAMP stack
#https://github.com/goodold/XAMP-MAMP-stack-with-brew

# Register taps ---------
# -----------------------

taps=(
  "caskroom/cask" \
  "caskroom/versions" \
  "homebrew/dupes" \
  "homebrew/php" \
  "homebrew/versions" \
  # "ravenac95/sudolikeaboss" \
  # "thoughtbot/formulae"
)

# for i in "${taps[@]}"
# do :
#
brew tap $i
# done


# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formula
brew upgrade


# Install brews ---------
# -----------------------

brews=(
  "caskroom/cask/brew-cask" \
  "composer" \
  "curl" \
  "drush" \
  "ffmpeg" \
  "git" \
  "go" \
  "heroku-toolbelt" \
  "imagemagick" \
  "mackup" \
  "mcrypt" \
  "mysql" \
  "node" \
  "phantomjs" \
  "php55" \
  "php55-mcrypt" \
  "php55-xdebug" \
  "pngquant" \
  "pv" \
  "python" \
  "ruby" \
  "wget" \
  "wp-cli" \
  "youtube-dl" \
  "zsh" \
  "zsh-completions"
)

# for i in "${brews[@]}"
# do :
#
brew install $i
# done

echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."


# Install casks ---------
# -----------------------

casks=(
  "adium" \
  "airfoil" \
  "alfred" \
  "appfresh" \
  "atext" \
  "atom" \
  "audio-hijack-pro" \
  "boxer" \
  "caffeine" \
  "cakebrew" \
  "cheatsheet" \
  "cleanmymac" \
  "coteditor" \
  "daisydisk" \
  "droplr" \
  "firefox" \
  "firefox-nightly" \
  "firefoxdeveloperedition" \
  "fission" \
  "flickr-uploadr" \
  "flux" \
  "github" \
  "gitx-rowanj" \
  "google-chrome-canary" \
  "google-drive" \
  "gulp" \
  "handbrake" \
  "iterm2-beta" \
  "kaleidoscope" \
  "knox" \
  "launchbar" \
  "layervault" \
  "liteicon" \
  "macdown" \
  "mailbox" \
  "max" \
  "mou" \
  "openemu" \
  "opera" \
  "pacifist" \
  "paparazzi" \
  "pixel-winch" \
  "plex-home-theater" \
  "plex-media-server" \
  "quicksilver" \
  "sidekick" \
  "sketch" \
  "sketch" \
  "sketch-beta" \
  "sketch-toolbox" \
  "skype" \
  "slack-beta (!)" \
  "spotify" \
  "sublime-text3" \
  "torbrowser" \
  "transmission" \
  "transmission-remote-gui" \
  "virtualbox" \
  "vlc" \
  "xtrafinder"
)

# for i in "${casks[@]}"
# do :
#
brew cask install $i 2> /dev/null
# done

# Remove outdated versions from the cellar
brew cleanup
