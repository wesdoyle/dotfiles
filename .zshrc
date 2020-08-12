# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/wes/.oh-my-zsh
export PROJECT_HOME=/home/wes/projects
export CURRENT_PROJECT=mosaicnotes

# ZSH_THEME="amuse"
ZSH_THEME="cloud"

source $ZSH/oh-my-zsh.sh

alias pip="pip3"

alias ls='ls -lah'
alias sz='source ~/.zshrc'

# projects
alias project="cd ~/projects/$CURRENT_PROJECT"
alias rr=project
alias limbus="cd ~/projects/limbus && source env/bin/activate"

# tmux stuff
# alias tmux="TERM=screen-256color-bce tmux"
[[ $TMUX = "" ]] && export TERM="xterm-256color"
alias tm="tmux new-session"
alias tl="tmux list-sessions"
alias ta="tmux attach -t"

export PATH=$PATH:/Applications/SonarScanner/bin
export PATH=$PATH:/Applications/SonarQube/bin
alias  sonar="/Applications/SonarQube/bin/macosx-universal-64/sonar.sh console"

unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"
export DENO_INSTALL="/Users/wes/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
