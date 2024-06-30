return {
	"ggandor/leap.nvim",
	config = function()
		vim.keymap.set({ "n", "x", "o" }, "<Leader>s", "<Plug>(leap-forward)")
		vim.keymap.set({ "n", "x", "o" }, "<Leader>S", "<Plug>(leap-backward)")
		vim.keymap.set({ "n", "x", "o" }, "<Leader>gs", "<Plug>(leap-from-window)")
	end,
}
