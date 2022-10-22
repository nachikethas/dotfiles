-- Requires that packer.nvim is installed. See
-- https://github.com/wbthomason/packer.nvim

return require('packer').startup(function(use)
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }

  -- Syntax highlighting for Kitty terminal config files.
  use { 'fladson/vim-kitty' }

  -- Syntax highlighting for fish shell scripts.
  use { 'dag/vim-fish' }

  -- Tokyo Night colorscheme
  use { 'folke/tokyonight.nvim' }

  -- Neovim statusline plugin written in pure lua.
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' }
  }

  -- Treesitter configurations and abstraction layer for NeoVim
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Toggle between relative and absolute line numbers automatically.
  use { 'jeffkreeftmeijer/vim-numbertoggle' }
end)
