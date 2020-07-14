#!/bin/sh

# Aliases
alias phplog="open ~/Library/Logs/php.log"
alias apache2ctl='sudo apachectl'
alias colors='python ~/my-home/bin/colors.py --terse'
alias gox='chmod u+x $HOME/my-home/go/libexec/go-*'
alias week='date "+%V"'
alias givaktbot='cd ~/Sites/_tools/bot/ && ~/Sites/_tools/gobot/bin/hubot --name bot'
# alias progressive="identify -verbose $1 | grep Interlace"
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
alias fuck='$(thefuck $(fc -ln -1))'
alias op-ll='eval $(op signin linuslundahl)'
alias op-hds='eval $(op signin hdsit)'
alias cat='ccat'
alias cat0='/bin/cat' # for cases when you need plain `cat`

# Shortcuts
alias c='clear'
alias o='open .'
alias g="grep -r -i"
alias cp="cp -rv"
alias edit='code'

# Work
alias consul-start='consul agent -server -data-dir . -bootstrap-expect 1 -ui -advertise 127.0.0.1'

# Listing
alias lsa='ls -alhF'               # List all files with info
alias ls.='ls -ald .*'             # List hidden files only
alias lsd='ls -dlG */'             # Only list directories
alias lsd.='ls -dlG .*/ */'        # Only list directories, including hidden ones
alias lsbd='ls -thor'              # List dir contents by modified date
alias lscf='/bin/ls -rt|tail -n1'  # Last changed file
alias ls-tree='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\''' # List as tree

# Zshell
alias zs='source $HOME/.zshrc'
alias ze='subl $HOME/.zshrc'
alias to_bash='chsh -s "$(which bash)"'

# Drush
# alias d='drush -y'
# alias dcc='drush cc all && date +"%T" && terminal-notifier -message "Drupal cache cleared"'
# alias ddl='drush pm-download'
# alias dun='drush pm-uninstall'
# alias den='drush pm-enable'
# alias dsolr='drush solr-delete-index | drush solr-index && terminal-notifier -message "Solr re-indexed"'

# Bower
alias bower='noglob bower'

# Node
alias nb="clear && node . | bunyan"
alias nm="clear && nodemon -e js,json,jsx,ejs,coffee ."
alias nbm="clear && nodemon -e js,json,jsx,ejs,coffee . | bunyan"
alias nbmw="clear && nodemon -e js,json,jsx,ejs,coffee . | bunyan -l warn"
alias nbmd="clear && nodemon -e js,json,jsx,ejs,coffee . | bunyan -l debug"
alias npmplease="rm -rf node_modules/ && rm -f package-lock.json && npm install"
alias neslint="./node_modules/.bin/eslint --ext .js --ext .jsx"

# Simple Python server
alias servethis="python -c 'import SimpleHTTPServer; SimpleHTTPServer.test()'"

# Updating
alias bup='brew update && brew upgrade && brew cleanup' # Homebrew
alias gup='gem update && gem cleanup'                   # Ruby gems
alias nup='npm update -g'                               # NPM
alias osxup='sudo softwareupdate -ia'                   # OS X
alias allup='gup && nup && bup'

# Drupal
alias d7_cobalt='drush dis toolbar -y && drush dis overlay -y && drush dl cobalt -y && drush en cobalt -y && terminal-notifier -message "Drupal 7 is now Cobalted"'

# Git
alias gfp='git push origin master --tags && git push origin develop'
alias gcf="git commit --fixup"
alias gri="git rebase --interactive --autosquash"
alias grid="git rebase --interactive --autosquash origin/develop"
alias grim="git rebase --interactive --autosquash origin/master"
alias r='cd "$(git rev-parse --show-toplevel)"' # Poor mans reverse()

# OS X
alias rebuildlsdb='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder' #Rebuild Launch Services Database
alias dropboxwatch='sudo fs_usage | grep ~/Dropbox'
alias ql="qlmanage -p"
alias verifypermissions="sudo /usr/libexec/repair_packages --verify --standard-pkgs /"
alias repairpermissions="sudo /usr/libexec/repair_packages --repair --standard-pkgs --volume /"
