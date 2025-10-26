alias cat 'bat'
alias ping 'prettyping --nolegend'
alias top 'htop'
alias du 'ncdu --color dark -rr -x'
alias l 'eza --group-directories-first --classify --icons --dereference'
alias ls 'eza --icons'
alias la 'eza --group-directories-first --classify --icons --dereference -a'
alias ll 'eza --group-directories-first --classify --icons --dereference -l'
alias rm 'rm -I'
alias bkup 'btrbk -c .config/btrbk.conf -v --pretty --progress run'

# go up directories easier
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'

# Enable native Wayland backend in Signal
alias signal-desktop 'signal-desktop --ozone-platform=wayland --enable-features=UseOzonePlatform --ozone-platform=wayland --enable-features=WaylandWindowDecorations'

# Kill tracker-miner-fs deamon. See
# https://gnome.pages.gitlab.gnome.org/tracker/faq/#how-can-i-help-debug-problems-with-tracker-services
alias kill_tracker 'systemctl mask --user --now tracker-miner-fs-3.service'
