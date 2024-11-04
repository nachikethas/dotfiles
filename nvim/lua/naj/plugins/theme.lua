return {
  -- the colorscheme should be available when starting Neovim
  {
    'folke/tokyonight.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight-night]])
    end,
  },
  -- Neovim statusline written in Lua
  {
    'nvim-lualine/lualine.nvim',
    opts = {},
  },
  -- Required by lualine
  {
    'nvim-tree/nvim-web-devicons',
    lazy = true,
    opts = {
      -- globally enable different highlight colors per icon (default to true)
      -- if set to false all icons will have the default icon's color
      color_icons = true;
      -- globally enable default icons (default to false)
      -- will get overriden by `get_icons` option
      default = true;
    },
  },
  -- Syntax highlighting for Kitty terminal config files.
  { 'fladson/vim-kitty' },
}
