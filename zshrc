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

# load config subdirectory
ZSHHOME="${HOME}/.zshrc.d"

if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
  for i in $ZSHHOME/*; do
    [[ ${i##*/} = *.zsh ]] &&
      [ \( -f $i -o -h $i \) -a -r $i ] && . $i
  done
fi

eval "$(starship init zsh)"
