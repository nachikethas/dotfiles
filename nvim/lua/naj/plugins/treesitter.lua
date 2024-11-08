return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				-- A list of parser names, or "all"
				ensure_installed = {
					"bash",
					"cmake",
					"cpp",
					"c",
					"fish",
					"go",
					"julia",
					"latex",
					"lua",
					"proto",
					"python",
					"r",
					"rust",
				},

				-- Install parsers synchronously (only applied to `ensure_installed`)
				sync_install = false,

				-- Automatically install missing parsers when entering buffer
				-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
				auto_install = true,

				-- List of parsers to ignore installing (for "all")
				ignore_install = { "elm" },

				highlight = {
					-- `false` will disable the whole extension
					enable = true,

					-- Disable slow treesitter highlight for large files
					disable = function(lang, buf)
						local max_filesize = 4 * 1024 * 1024 -- 4 MB
						local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and stats and stats.size > max_filesize then
							return true
						end
					end,

					-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
					-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
					-- Using this option may slow down your editor, and you may see some duplicate highlights.
					-- Instead of true it can also be a list of languages
					additional_vim_regex_highlighting = false,

					-- Indentation based on treesitter for the = operator. NOTE: This is an experimental feature.
					indent = { enable = true },
				},
			})
		end,
	},
}
