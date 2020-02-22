# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Add postgres to PATH
export PATH="$PATH:/Library/PostgreSQL/11/bin"

# Add go bin to PATH
export PATH="$PATH:/Users/ankitdeshpande/go/bin"

# Path to your oh-my-zsh installation.
export ZSH="/Users/ankitdeshpande/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
export EDITOR='vim'

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="/usr/local/opt/mysql-client/bin:$PATH"

alias k='kubectl'

alias gs='git status'
alias ga='git add'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gb='git branch'
alias glog='git log'
alias glogo='git log --oneline'
alias gd='git difftool -y -t vimdiff'
alias gsl='git stash list'
alias gss='git stash save'

#Apply a particular stash, e.g., gsta 1
function gsa () {
 if [ $# -eq 0 ]
   then
     git stash apply stash@{0}
 else
   for i in "$@"; do
     git stash apply stash@{${i}}
   done
 fi
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -f ~/.kube-ps1.sh ] && source ~/.kube-ps1.sh
PROMPT='$(kube_ps1)'$PROMPT

