export ZSH="$HOME/.config/oh-my-zsh"

export ZSH_CUSTOM="/home/noderyos/.config/zsh-custom"

ZSH_THEME="noderyos"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias ll='exa -lag --smart-group --git'
alias ls='exa'
alias grep='grep --color=auto'
