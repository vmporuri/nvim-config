return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	pin = true,
	config = function()
		local logo = [[
███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗
████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║
██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║
██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║
██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║
╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝
        ]]
		logo = string.rep("\n", 3) .. logo

		require("dashboard").setup({
			theme = "hyper",
			config = {
				header = vim.split(logo, "\n"),
				shortcut = {
					{
						desc = "Find Files",
						key = "f",
						action = "Telescope find_files",
					},
					{
						desc = "Todo List",
						key = "t",
						action = "TodoTelescope",
					},
					{
						desc = "Live Grep",
						key = "s",
						action = "Telescope live_grep",
					},
				},
				project = { enable = true, limit = 2, action = "Telescope find_files cwd=" },
				mru = { limit = 3 },
			},
		})
	end,
}
