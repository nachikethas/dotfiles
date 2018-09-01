function updatevim
    set -lx SHELL (which bash)
    command vim +PlugInstall! +PlugClean +qall
end
