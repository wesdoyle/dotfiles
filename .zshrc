# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/wes/.oh-my-zsh
export PROJECT_HOME=/home/wes/projects

plugins=(git node npm github tmux)

# ZSH_THEME="amuse"
ZSH_THEME="candy"
# ZSH_THEME="cloud"
# ZSH_THEME="lambda"
# ZSH_THEME="agnoster"
# ZSH_THEME="wes"

source $ZSH/oh-my-zsh.sh

alias pip="pip3"

alias ls='exa -la'
alias sz='source ~/.zshrc'

alias vi='nvim'
alias vim='nvim'

# projects
alias project="cd ~/projects"

# tmux stuff
# alias tmux="TERM=tmux-256color-bce tmux"

export PATH=$PATH:/Applications/SonarScanner/bin
export PATH=$PATH:/Applications/SonarQube/bin
alias  sonar="/Applications/SonarQube/bin/macosx-universal-64/sonar.sh console"

unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"
export DENO_INSTALL="/Users/wes/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

alias python="python3"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/wes/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/wes/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/wes/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/wes/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export DOTNET_WORKER_DIR="~/bin/Microsoft.Spark.Worker-1.0.0"

export PATH="/Users/wes/bin/spark-3.1.1/bin:$PATH"
export PATH="/Users/wes/bin/jdk1.8.0_341/bin:$PATH"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# ln -s /Applications/VMWare\ Fusion\ Tech\ Preview.app /Applications/VMWare\ Fusion.app
