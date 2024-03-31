return {
	"NvChad/nvim-colorizer.lua",
	config = function()
		local colorizer = require("colorizer")
		colorizer.setup({
			user_default_options = {
				mode = "background",
				names = true,
				tailwind = true,
			},
		})
	end,
}
