return {
	"NvChad/nvim-colorizer.lua",
	config = function()
		local colorizer = require("colorizer")
		colorizer.setup({
			filetypes = {
				"html",
				"css",
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
			},
			user_default_options = {
				mode = "background",
				names = true,
				css = true,
				tailwind = true,
				always_update = true,
			},
		})
	end,
}
