vim.pack.add({
  { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' },
})

require('catppuccin').setup({ auto_integrations = true })
vim.cmd.colorscheme('catppuccin-nvim')
