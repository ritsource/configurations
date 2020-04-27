# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/P.rit/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
#

# application/tool aliases
#
alias bree="broot"
alias rust="cargo"
#

# vi-vim-nvim aliases, all resolving to nvim
#
alias vi="nvim"
alias vim="nvim"
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
alias vconf="confedit"
alias confv="confedit"
alias confe="confedit"
#

# startup command
fortune | cowsay -f sodomized | lolcat -a -d 1
