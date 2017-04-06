HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt appendhistory autocd extendedglob nomatch notify

# No beeping. Be nice.
unsetopt beep

# Behave like vim.
bindkey -v

# Use vim for editing
export EDITOR=/usr/bin/vim

# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Prompts for zsh
autoload -U promptinit
promptinit

# Help
autoload -U run-help
autoload run-help-git
autoload run-help-svn
autoload run-help-svk
unalias run-help
alias help=run-help

# Arch Linux: Fish like syntax highlighting. Install the arch package
# zsh-syntax-highlighting for the below line to work.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Using antigen to manage all zsh plugins.
# See https://github.com/zsh-users/antigen
source ~/Code/config/zsh/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle archlinux
antigen bundle command-not-found

# Enable autoenv
# See: https://github.com/Tarrasch/zsh-autoenv
antigen-bundle Tarrasch/zsh-autoenv

# More vi-like key bindings for zsh. See:
# https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/vi-mode
antigen bundle vi-mode

# k is the new l?
antigen bundle rimraf/k

# Syntax highlighting bundle.
#antigen bundle zsh-users/zsh-syntax-highlighting

# Suggestions for commands
# Use cntrl+e to accept the current suggestion
antigen bundle tarruda/zsh-autosuggestions
bindkey '^e' autosuggest-accept

# bd to go back a directory
antigen-bundle Tarrasch/zsh-bd

# Colors for directories
antigen bundle joel-porquet/zsh-dircolors-solarized

# System information in tmux status line
antigen bundle thewtex/tmux-mem-cpu-load

# Themes

## YS
antigen theme ys

## Bullet Train
#antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

## Pure
#antigen bundle mafredri/zsh-async
#antigen bundle sindresorhus/pure

# Tell antigen that you're done.
antigen apply

# Aliases
if [ -f ~/.zshrc_aliases ]; then
    source ~/.zshrc_aliases
else
    print "404: ~/.zshrc_aliases not found."
fi

# Random cow with fortune
fortune -a | cowthink -f $(find /usr/share/cows -type f | shuf -n 1)
