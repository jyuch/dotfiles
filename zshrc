# zplug
source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# use colors
autoload -Uz colors
colors

# use auto-complete
autoload -Uz compinit
compinit

# emacs keybind
bindkey -e

# share history
setopt share_history

# avoid duplication
setopt histignorealldups

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# alias
alias ls='ls --color=auto'
alias la='ls -al'
alias ll='ls -l'

# spaceship-prompt
zplug denysdovhan/spaceship-prompt, use:spaceship.zsh, from:github, as:theme

# load plugins
zplug load
