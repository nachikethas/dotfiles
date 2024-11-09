return {
  { "nvim-lua/plenary.nvim" },
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
  },
}
