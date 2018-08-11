set -o ignoreeof
shopt -s cdspell
shopt -o noclobber
shopt -u sourcepath

# Command history
shopt -s histappend
HISTSIZE=1000000
HISTFILESIZE=1000000

# Alias
alias ls='ls -F'
alias ll='ls -la'
alias mkdir='mkdir -p'
alias updatedb='sudo /usr/libexec/locate.updatedb'

# Settings for PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH:/Users/jumpei/.nodebrew/current/bin"

# Virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi

# Git
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '

# Go
export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
eval "$(goenv init -)"
export GOPATH=$HOME/go
