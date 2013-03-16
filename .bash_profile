# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# PS1 shit
export VIRTUAL_ENV_DISABLE_PROMPT=1

venv_ps1() {
    if [ $VIRTUAL_ENV ]; then
        echo " {"$(basename $VIRTUAL_ENV)"}"
    fi
}

# Colorize ls
export CLICOLOR=1

export PS1="\w\$(__git_ps1)\$(venv_ps1) \$ "

# Homebrew shit
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/share/python:$PATH
export PATH=/usr/local/share/python3:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/opt/ruby/bin:$PATH

# Python
export PYTHONDONTWRITEBYTECODE=true

export WORKON_HOME=~/.env
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS=--distribute

. virtualenvwrapper.sh

alias venv="mkvirtualenv $(basename $(pwd))"
alias vact="workon $(basename $(pwd))"
