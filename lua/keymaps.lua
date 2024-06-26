vim.g.mapleader = " "

vim.keymap.set("i", "<M-BS>", "<C-w>")

vim.keymap.set({ "n", "i", "v" }, "<C-c>", "<Esc>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("i", "<C-v>", [[<C-o>"+P<C-c>`]a]])

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "]q", [[:cnext<CR>]])
vim.keymap.set("n", "[q", [[:cprev<CR>]])

vim.keymap.set("n", "<Leader>o", [[:<C-u>put =repeat(nr2char(10),v:count)<Bar>execute "'[-1"<CR>]])
vim.keymap.set("n", "<Leader>O", [[:<C-u>put!=repeat(nr2char(10),v:count)<Bar>execute "']+1"<CR>]])
