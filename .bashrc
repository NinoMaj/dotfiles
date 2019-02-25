#!/usr/bin/env NAME

eval "$(rbenv init -)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

if [ -f "$HOME/.bash_secrets" ]; then
	. ~/.bash_secrets
fi

# setup all of the aliases, functions, etc.
if [ -d "$HOME/dotfiles" ]; then
	for f in ~/dotfiles/*.sh; do source "$f"; done
fi

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
