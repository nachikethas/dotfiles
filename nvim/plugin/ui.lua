vim.pack.add({
  { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' },
  'https://github.com/MeanderingProgrammer/render-markdown.nvim',
})

require('catppuccin').setup({ auto_integrations = true })
vim.cmd.colorscheme('catppuccin-nvim')
