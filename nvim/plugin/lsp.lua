vim.pack.add({ 'https://github.com/neovim/nvim-lspconfig' })

vim.lsp.enable('pyright')
vim.lsp.enable('gopls')
vim.lsp.enable('ccls')
vim.lsp.enable('lua_ls')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('texlab')
