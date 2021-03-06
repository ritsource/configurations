# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# # Path to your oh-my-zsh installation.
# export ZSH="/Users/P.rit/.oh-my-zsh"
#
clear

# Path to your oh-my-zsh installation.
export ZSH="/home/ubuntu/.oh-my-zsh"

# plugins
plugins=(
    git
    # zsh-autosuggestions # source - https://apple.stackexchange.com/a/140770/351278
    # zsh-completions
    zsh-syntax-highlighting
)

# source - https://github.com/zsh-users/zsh-completions#oh-my-zsh
# autoload -U compinit && compinit

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# ...........................
# ...........................
# from now custom stuff .....
# ...........................
# ...........................

source $ZSH/oh-my-zsh.sh

# kaybindings for H,J,K,L navgation on terminal
# source - https://unix.stackexchange.com/a/323279/359073
# 
# mapping is something like
# ctrl + k => up-arrow
# ctrl + j => down-arrow
# ctrl + h => left-arrow
# ctrl + l => right-arrow
#
bindkey '^k' up-history
bindkey '^j' down-history
bindkey '^h' backward-char
bindkey '^l' forward-char
#

# setting tabsize equal to 2 characters
tabs -2
#

# path, this was already there, so not messing up n
export PATH="$PATH:`pwd`/flutter/bin:/usr/local/Cellar/python/3.7.7/bin:/Users/P.rit/Library/Python/2.7/bin:~/.custom/scripts/bin"
#

# exporting path for custom scripts
# to find out more ~/.custom/scripts
# 
export PATH=$PATH:~/.custom/scripts/bin
#

# Go-path export (golang)
#
export GOPATH=$HOME/go
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin
# 

# exporting nvim as default text editor
# source https://unix.stackexchange.com/questions/501862/how-can-i-set-the-default-editor-as-nano-on-my-mac
#
export EDITOR="nvim"
export VISUAL="$EDITOR"
#

# useful aliases
#
alias hist="history"
alias clip="pbcopy"
alias sl="ls"
#

# for refreshing terminal source
#
alias refresh="source ~/.bash_profile; source ~/.zshrc; source ~/.profile"
#

# shortcut aliases
#
alias rr="refresh" 
alias cc="clear"
alias wh="which"
alias la="ls -a"
alias tt="todo.sh ls"
alias :q="exit"
#

# application/tool aliases
#
alias bree="broot"
alias rust="cargo"
alias todo="todo.sh"
alias ripgrep="rg"
#

# vi-vim-nvim aliases, all resolving to nvim
#
alias vi="nvim"
alias vim="nvim"
alias vi.="nvim ."
alias .="nvim ."
#

# git alias, shortcuts for most
# used git related commands
#
alias gits="git status"
alias gita="git add"
alias gitaa="git add --all"
alias gitc="git commit"
alias gitb="git branch"
alias gitck="git checkout"
alias gitbclip="git rev-parse --abbrev-ref HEAD | tr -d '\n' | pbcopy"
#

# alias for custom scripts
# to find out more ~/.custom/script
#
alias ce_zsh="confedit zsh"
alias ec_zsh="confedit zsh"
alias ce_vim="confedit nvim"
alias ec_vim="confedit nvim"
alias ce_nvim="confedit nvim"
alias ec_nvim="confedit nvim"
alias ce_nvimex="confedit nvim --ex"
alias ec_nvimex="confedit nvim --ex"
alias co_nfe="confedit"
alias co_nf="confedit"
#

# # startup command
# # random number between 0 to 10, if 1 then print
# if [ 3 -gt $(python -S -c "import random; print random.randrange(0,10)") ]; then
#     fortune | cowsay -f sodomized | lolcat -a -d 1
# fi
# #

# language stuff I think, NO IDEA
# source - https://stackoverflow.com/a/56743150/9406420
export LC_ALL=en_US.UTF-8
#

# clear

# Prompting a line between each command
# Source - https://stackoverflow.com/a/20615683/9406420
#
STARTUP=true
precmd() {
    if $STARTUP; then
        STARTUP=false
    else
        echo
    fi
}
#
#

# PROMPT="$fg[cyan]%}$USER@%{$fg[blue]%}%m ${PROMPT}"

HOSTNAME="${$(hostname -I): : -1}"
WHO_HOSTNAME="$(who | grep -oE '((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])')"

# PROMPT="$fg[cyan]%}ssh:// $fg[blue]%}host:($fg[red]%}$HOSTNAME$fg[blue]%})"+$PROMPT

# if [["$HOSTNAME" -eq "$WHO_HOSTNAME"]]
# then
#     PROMPT="$fg[yellow]%}host:($fg[green]%}$HOSTNAME$fg[yellow]%})  $PROMPT"
# fi
#

PROMPT="$fg[yellow]%}host:($fg[green]%}$HOSTNAME$fg[yellow]%})  $PROMPT"

# PROMPT="$fg[yellow]%}host:($fg[green]%}$HOSTNAME$fg[yellow]%})  $PROMPT"

# source ~/.promptzsh


# bindkey '\t' menu-complete
# bindkey '\t' backward-kill-line
