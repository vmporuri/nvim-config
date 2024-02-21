return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>vf", vim.cmd.Git)
	end,
}
