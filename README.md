# ~/dotfiles
-------

## For zsh:

Install [Prezto](https://github.com/linuslundahl/prezto).

Edit `~/.zpreztorc` and add modules:

	zstyle ':prezto:load' pmodule \
	  'environment' \
	  'terminal' \
	  'editor' \
	  'history' \
	  'directory' \
	  'spectrum' \
	  'utility' \
	  'completion' \
	  'history-substring-search' \
	  'git' \
	  'python' \
	  'osx' \
	  'syntax-highlighting' \
	  'prompt' \

Then update the theme to:

	zstyle ':prezto:module:prompt' theme 'nicoulaj'


Then run:

	$ echo source ~/dotfiles/zsh/zshrc >> ~/.zshrc


## -> Continued

Create symlinks:

	$ ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig
	$ ln -s ~/dotfiles/git/.gitignore ~/.gitignore


Include apache.conf in httpd.conf:

	$ echo "echo Include /Users/linus/dotfiles/apache/apache.conf >> /etc/apache2/httpd.conf" | sudo sh
