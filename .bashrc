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
alias dc='docker-compose'

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
export PATH=/usr/local/go/bin:$PATH

# Python
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
eval "$(pyenv init -)"
python3 -m site &>/dev/null && PATH="`python3 -m site --user-base`/bin:$PATH"
