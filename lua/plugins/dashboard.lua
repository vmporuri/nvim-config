return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	pin = true,
	config = function()
		require("dashboard").setup({
			theme = "hyper",
			config = {
				header = {
					" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
					" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
					" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
					" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
					" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
					" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
					"",
				},
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
				project = { enable = true, limit = 3, action = "Telescope find_files cwd=" },
				mru = { limit = 3 },
			},
		})
	end,
}
