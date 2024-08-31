local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
local builtin = require("telescope.builtin")

-- Leader Remaps
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Custom Remaps
keymap("i", "jj", "<Esc>", opts)
keymap("n", "<Esc>", ":noh<CR>", opts)

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Window splits
keymap("n", "<Leader>ss", ":vsplit<CR>", opts)
keymap("n", "<Leader>sh", ":split<CR>", opts)

-- Buffers
keymap("n", "<Leader>bh", ":bnext<CR>", opts)
keymap("n", "<Leader>bl", ":bprevious<CR>", opts)
keymap("n", "<Leader>bd", ":bdelete<CR>", opts)
keymap("n", "<Leader>bx", ":bufdo bd<CR>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Telescope
keymap("n", "<leader>f", builtin.find_files, {})
keymap("n", "<leader>g", builtin.live_grep, {})
keymap("n", "<leader>b", builtin.buffers, {})
keymap("n", "<leader>d", ":TodoTelescope<CR>", opts)

-- Tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Improvements
keymap("x", "p", [["_dP]])
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "<leader>lg", ":LazyGit<CR>", opts)

-- Git
keymap("n", "<leader>gl", function()
	if vim.wo.diff then
		vim.cmd.normal({ "]c", bang = true })
	else
		require("gitsigns").nav_hunk("next")
	end
end, opts)

keymap("n", "<leader>gh", function()
	if vim.wo.diff then
		vim.cmd.normal({ "[c", bang = true })
	else
		require("gitsigns").nav_hunk("prev")
	end
end, opts)

keymap("n", "<leader>gs", require("gitsigns").preview_hunk, opts)
keymap("n", "<leader>gb", require("gitsigns").toggle_current_line_blame, opts)
keymap("n", "<leader>gd", require("gitsigns").diffthis, opts)
keymap("n", "<leader>gB", function()
	require("gitsigns").blame_line({ full = true })
end, opts)
