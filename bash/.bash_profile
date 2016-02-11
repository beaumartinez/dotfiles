#!/usr/bin/env bash

# Bash completion
if [ -f "$(brew --prefix)/etc/bash_completion" ]; then
    . "$(brew --prefix)/etc/bash_completion"
fi

# PS1 shit
export VIRTUAL_ENV_DISABLE_PROMPT=1

venv_ps1() {
    if [ "$VIRTUAL_ENV" ]; then
        echo \ {"$(basename "$VIRTUAL_ENV")"}
    fi
}

export PS1="\w\$(__git_ps1)\$(venv_ps1) \$ "

# Colorize ls
export CLICOLOR=1

# Vim baby
export EDITOR=/usr/bin/vim

# Homebrew shit
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH=/usr/local/heroku/bin:$PATH

# Python
export PYTHONDONTWRITEBYTECODE=true

export WORKON_HOME=~/.env

. virtualenvwrapper.sh

alias venv='mkvirtualenv $(basename $(pwd))'
alias vact='workon $(basename $(pwd))'

export PYTHONSTARTUP=~/.pythonrc

# Other

export HISTFILESIZE=1000000
export HISTSIZE=1000000

alias gsp="git stash && git pull && git stash pop"

alias l=less

alias nrestart="sudo ifconfig en0 down && sudo ifconfig en0 up"
alias wchannel="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | sed -n -e 's/^.*channel: //p'"

# sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/bin/airport
