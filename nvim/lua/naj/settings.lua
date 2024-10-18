-------------------------------------------------------------
-- General Usability Options

-- When we enable number Neovim starts showing the line number in the gutter.
vim.opt.number = true

-- Enable mouse in every mode.
vim.opt.mouse = 'a'

-- Ignore uppercase letters when executing a search.
vim.opt.ignorecase = true

-- Makes our search ignore uppercase letters unless the search term has an
-- uppercase letter. Most of the time this is used in combination with
-- ignorecase.
vim.opt.smartcase = true

-- Highlights the results of the previous search. If needed, disable it below.
-- vim.opt.hlsearch = true

-- Preserve the indentation of a virtual line. These "virtual lines" are the
-- ones only visible when wrap is enabled (default).
vim.opt.breakindent = true

-- The amount of space on screen a Tab character can occupy. The default value
-- is 8. Use 2 or 4 for a more compact look.
vim.opt.tabstop = 2

-- Amount of characters Neovim will use to indent a line. This option
-- influences the keybindings << and >>. The default value is 8. Most of the
-- time we want to set this with same value as tabstop.
vim.opt.shiftwidth = 2

-- Controls whether or not Neovim should transform a Tab character to spaces.
-- The default value is false.
vim.opt.expandtab = true

-- Instead of erroring out, display a confirmation dialog asking if you want to
-- save this file.
vim.opt.confirm = true

-- Enable 24-bit RGB color in the TUI
vim.opt.termguicolors = true
