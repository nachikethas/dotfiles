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

-- Use the Tokyo Night color scheme
vim.opt.termguicolors = true
vim.cmd[[colorscheme tokyonight-night]]

-------------------------------------------------------------
-- Plugin Options

-- Start lualine
require('lualine').setup()

-- Setup devicons
require('nvim-web-devicons').setup {
 -- globally enable different highlight colors per icon (default to true)
 -- if set to false all icons will have the default icon's color
 color_icons = true;
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}

-- Treesitter configuration
require('nvim-treesitter.configs').setup {
  -- A list of parser names, or "all"
  ensure_installed = { 'bash', 'cmake', 'cpp', 'c', 'fish', 'go', 'julia',
  'latex', 'lua', 'proto', 'python', 'r', 'rust'},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { 'elm' },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 4 * 1024 * 1024 -- 4 MB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
