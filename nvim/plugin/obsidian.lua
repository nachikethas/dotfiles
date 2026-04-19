vim.pack.add {
  {
    src = 'https://github.com/obsidian-nvim/obsidian.nvim',
    version = vim.version.range('*') -- use latest release, remove to use latest commit
  }
}

require('obsidian').setup({
  legacy_commands = false,
  -- Enable plugin only in Obsidian workspaces
  workspaces = {
    {
      name = 'personal',
      path = '~/Documents/Notes/Obsidian/personal',
    },
  },
  templates = {
    folder = 'templates',
    date_format = '%Y-%m-%d',
    time_format = '%H:%M:%S',
  },
  daily_notes = {
    -- Optional, if you keep daily notes in a separate directory.
    folder = 'daily',
    -- Optional, if you want to change the date format for the ID of daily
    -- notes.
    date_format = '%Y%m%d',
    -- Optional, if you want to change the date format of the default alias
    -- of daily notes.
    alias_format = '%Y-%m-%d',
    -- Optional, default tags to add to each new daily note created.
    default_tags = { 'daily' },
    -- Optional, if you want to automatically insert a template from your
    -- template directory like 'daily.md'
    template = 'daily.md',
  }
})
