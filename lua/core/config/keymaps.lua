local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader Remaps
vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>q", ":q<CR>", opts)
keymap("n", "<leader>s", ":vnew | Telescope find_files<CR>")

-- Custom Remaps
keymap("i", "jj", "<Esc>", opts)
keymap("n", "<Esc>", ":noh<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-tab>", "<c-6>", opts)

keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#zz", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("x", "p", [["_dP]])

-- more good
keymap({ "n", "o", "x" }, "<s-h>", "^", opts)
keymap({ "n", "o", "x" }, "<s-l>", "g_", opts)

vim.api.nvim_set_keymap("t", "<C-;>", "<C-\\><C-n>", opts)

-- Tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
