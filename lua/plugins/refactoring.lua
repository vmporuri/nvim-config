return {
	"ThePrimeagen/refactoring.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		local refactoring = require("refactoring")

		refactoring.setup({
			prompt_func_return_type = {
				go = true,
				cpp = true,
				c = true,
				java = true,
			},
			prompt_func_param_type = {
				go = true,
				cpp = true,
				c = true,
				java = true,
			},
		})

		vim.keymap.set("x", "<leader>re", function()
			refactoring.refactor("Extract Function")
		end)
		vim.keymap.set("x", "<leader>rf", function()
			refactoring.refactor("Extract Function To File")
		end)
		vim.keymap.set("x", "<leader>rv", function()
			refactoring.refactor("Extract Variable")
		end)
		vim.keymap.set("n", "<leader>rI", function()
			refactoring.refactor("Inline Function")
		end)
		vim.keymap.set({ "n", "x" }, "<leader>ri", function()
			refactoring.refactor("Inline Variable")
		end)
		vim.keymap.set("n", "<leader>rb", function()
			refactoring.refactor("Extract Block")
		end)
		vim.keymap.set("n", "<leader>rbf", function()
			refactoring.refactor("Extract Block To File")
		end)
	end,
}
