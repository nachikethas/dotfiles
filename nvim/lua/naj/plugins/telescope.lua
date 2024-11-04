return {
  { "nvim-lua/plenary.nvim" },
  {
    "hrsh7th/nvim-cmp",
    -- Load cmp on InsertEnter
    event = "InsertEnter",
    -- These dependencies will only be loaded when cmp loads
    -- Dependencies are always lazy-loaded unless specified otherwise
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          -- Required - you must specify a snippet engine
          expand = function(args)
            -- For native neovim snippets (Neovim v0.10+)
            vim.snippet.expand(args.body)
          end,
        },
      })
    end,
  },
  { 
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
  },
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    config = function()
      require("telescope").setup({})
      require("telescope").load_extension("fzf")
    end,
  }
}
