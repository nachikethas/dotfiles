return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      auto_integrations = true,
    },
  },
  -- syntax highlighting for kitty terminal config files.
  { "fladson/vim-kitty" },
  -- syntax highlighting for fish shell scripts.
  { "dag/vim-fish" },
  -- toggle between relative and absolute line numbers automatically.
  { "sitiom/nvim-numbertoggle" },
  {
    "nvim-mini/mini.nvim",
    version = false,
    config = function ()
      require("mini.trailspace").setup()
      require("mini.icons").setup()
      require("mini.git").setup()
      require("mini.diff").setup()
      require("mini.statusline").setup()
    end,
  },
}
