return {
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
      "hrsh7th/cmp-emoji",
    },
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = cmp.mapping.preset.insert()
      -- Add emoji as a source of completion
      opts.sources = { { name = "emoji" } }
    end,
  },
}
