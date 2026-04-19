vim.pack.add({
  'https://github.com/nvim-mini/mini.nvim',
  'https://github.com/rafamadriz/friendly-snippets'
})

require('mini.trailspace').setup()
require('mini.icons').setup()
require('mini.git').setup()
require('mini.diff').setup()
require('mini.statusline').setup()
require('mini.pick').setup()
require('mini.cursorword').setup()

local gen_loader = require('mini.snippets').gen_loader
require('mini.snippets').setup({
  snippets = {
    -- Load custom file with global snippets first (adjust for Windows)
    gen_loader.from_file('~/.config/nvim/snippets/global.json'),
    -- Load snippets based on current language by reading files from
    -- 'snippets/' subdirectories from 'runtimepath' directories.
    gen_loader.from_lang(),
  },
})

require('mini.completion').setup()
