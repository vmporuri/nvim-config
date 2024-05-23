return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"windwp/nvim-ts-autotag",
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"javascript",
				"typescript",
				"html",
				"css",
				"python",
				"markdown",
				"markdown_inline",
				"go",
			},
			sync_install = false,
			highlight = { enable = true, disable = { "css" } },
			indent = { enable = true },
			rainbow = { enable = false },
			autotag = {
				enable = true,
				filetypes = {
					"html",
					"javascript",
					"typescript",
					"javascriptreact",
					"typescriptreact",
					"svelte",
					"vue",
					"tsx",
					"jsx",
					"rescript",
					"css",
					"lua",
					"xml",
					"php",
					"markdown",
				},
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<leader>=",
					node_incremental = "<leader>=",
					node_decremental = "<leader>-",
				},
			},
			textobjects = {
				move = {
					enable = true,
					set_jumps = true,
					goto_next_start = {
						["]f"] = "@function.outer",
						["]c"] = "@class.outer",
						["]r"] = "@parameter.inner",
					},
					goto_next_end = {
						["]F"] = "@function.outer",
						["]C"] = "@class.outer",
						["]R"] = "@parameter.inner",
					},
					goto_previous_start = {
						["[f"] = "@function.outer",
						["[m"] = "@class.outer",
						["[r"] = "@parameter.inner",
					},
					goto_previous_end = {
						["[F"] = "@function.outer",
						["[M"] = "@class.outer",
						["[R"] = "@parameter.inner",
					},
				},
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = "@class.inner",
						["a?"] = "@conditional.outer",
						["i?"] = "@conditional.inner",
						["al"] = "@loop.outer",
						["il"] = "@loop.inner",
						["ar"] = "@parameter.outer",
						["ir"] = "@parameter.inner",
						["l"] = "@assignment.lhs",
						["r"] = "@assignment.rhs",
						["as"] = "@statement.outer",
					},
				},
			},
		})
	end,
}
