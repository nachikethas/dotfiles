return {
  {
    "epwalsh/obsidian.nvim",
    -- Recommended, use latest release instead of latest commit
    version = "*",
    lazy = true,
    -- Only load obsidian.nvim for markdown files in your vault:
     event = {
       -- If you want to use the home shortcut '~' here you need to call
       -- 'vim.fn.expand'.
       "BufReadPre " .. vim.fn.expand "~" .. "/Documents/Notes/Obsidian/personal/*.md",
       "BufNewFile " .. vim.fn.expand "~" .. "/Documents/Notes/Obsidian/personal/*.md"
       -- Refer to `:h file-pattern` for more examples
     },
    dependencies = {
      -- Required
      "nvim-lua/plenary.nvim",
    },
    opts = {
      -- Enable plugin only in Obsidian workspaces
      workspaces = {
        {
          name = "personal",
          path = "~/Documents/Notes/Obsidian/personal",
        },
      },
    },
  }
}
