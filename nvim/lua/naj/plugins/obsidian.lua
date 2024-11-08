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
			"BufReadPre "
				.. vim.fn.expand("~")
				.. "/Documents/Notes/Obsidian/personal/*.md",
			"BufNewFile " .. vim.fn.expand("~") .. "/Documents/Notes/Obsidian/personal/*.md",
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
			templates = {
				folder = "templates",
				date_format = "%Y-%m-%d",
				time_format = "%H:%M:%S",
			},
			daily_notes = {
				-- Optional, if you keep daily notes in a separate directory.
				folder = "daily",
				-- Optional, if you want to change the date format for the ID of daily
				-- notes.
				date_format = "%Y%m%d",
				-- Optional, if you want to change the date format of the default alias
				-- of daily notes.
				alias_format = "%Y-%m-%d",
				-- Optional, default tags to add to each new daily note created.
				default_tags = { "daily" },
				-- Optional, if you want to automatically insert a template from your
				-- template directory like 'daily.md'
				template = "daily.md",
			},
		},
	},
}
