export ZSH="$HOME/.config/oh-my-zsh"

export ZSH_CUSTOM="$HOME/.config/zsh-custom"

ZSH_THEME="noderyos"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias ll='exa -lag --smart-group --git'
alias ls='exa'
alias grep='grep --color=auto'

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/opt/bin:$PATH
export PATH=$HOME/.local/share/gem/ruby/3.3.0/bin:$PATH
