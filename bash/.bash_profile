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
# export PYTHONDONTWRITEBYTECODE=true

export WORKON_HOME=~/.env

. virtualenvwrapper.sh

alias venv="mkvirtualenv $(basename $(pwd))"
alias vact="workon $(basename $(pwd))"

export PYTHONSTARTUP=~/.pythonrc

# Other

export HISTFILESIZE=1000000
export HISTSIZE=1000000

alias gsp="git stash && git pull && git stash pop"

alias cask=brew-cask

export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk
export ANDROID_HOME=/usr/local/opt/android-sdk
