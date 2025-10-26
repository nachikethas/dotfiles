# set aliases
source ~/.config/fish/aliases.fish

# set the colors to use the tokyonight color scheme
source ~/.config/fish/tokyonight_night.fish

# set NeoVim as the default editor
set -x EDITOR /usr/bin/nvim

# set the path for GO
set -x GOPATH $HOME/Code/go

# Use Wayland as the backend for Electron apps (such as Signal)
set -x ELECTRON_OZONE_PLATFORM_HINT wayland

# Use Wayland for QT applications such as masterpdfeditor5
set -x QT_QPA_PLATFORM wayland

# Use vi key bindings
set -g fish_key_bindings fish_vi_key_bindings

# Add zoxide to fish shell
zoxide init fish | source
