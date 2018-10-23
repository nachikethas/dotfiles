# set aliases
source ~/.config/fish/aliases.fish

# set the colors to use the solarized color scheme
source ~/.config/fish/solarized.fish

# set path for local binaries, ruby gems and pip binaries
set PATH $PATH (ruby -e "print Gem.user_dir")/bin ~/.local/bin

# use solarized color scheme for fzf
set -x FZF_DEFAULT_OPTS '
  --color=bg+:#073642,bg:#002b36,spinner:#719e07,hl:#586e75
  --color=fg:#839496,header:#586e75,info:#cb4b16,pointer:#719e07
  --color=marker:#719e07,fg+:#839496,prompt:#719e07,hl+:#719e07
'
# set path for nodejs binaries
set PATH $PATH ~/.node_modules/bin

# user wide installations for nodejs packages
set -x npm_config_prefix '~/.node_modules'

# setup completions for fish in kitty
kitty + complete setup fish | source

# dircolors for fish. Configure in ~/.dir_colors
eval (dircolors -c ~/.dir_colors)
