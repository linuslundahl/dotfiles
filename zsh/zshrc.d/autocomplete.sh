#!/bin/sh

# shellcheck source=/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
. /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Bash completion
# autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
# shellcheck source=/usr/local/etc/bash_completion.d/wp
[ -f "$(brew --prefix)/etc/bash_completion.d/wp" ] && . "$(brew --prefix)/etc/bash_completion.d/wp"
# shellcheck source=/usr/local/etc/bash_completion.d/youtube-dl.bash-completion
[ -f "$(brew --prefix)/etc/bash_completion.d/youtube-dl.bash-completion" ] && . "$(brew --prefix)/etc/bash_completion.d/youtube-dl.bash-completion"

# shellcheck source=/usr/local/etc/profile.d/autojump.sh
[ -f "/usr/local/etc/profile.d/autojump.sh" ] && . "/usr/local/etc/profile.d/autojump.sh"
