local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- Themes
	{ "marko-cerovac/material.nvim" },
	{ "sainnhe/gruvbox-material" },
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },

	-- Customization
	{ "ryanoasis/vim-devicons" },
	{ "nvim-tree/nvim-web-devicons", event = "VeryLazy" },

	-- Utilities
	{ "windwp/nvim-autopairs" },
	{ "nvim-treesitter/nvim-treesitter", dependencies = { { "nvim-treesitter/nvim-treesitter-textobjects" } } },
	{ "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "folke/which-key.nvim", event = "VeryLazy" },
	{ "lukas-reineke/indent-blankline.nvim" },
	{ "b0o/incline.nvim", event = "VeryLazy" },
	{ "ggandor/lightspeed.nvim" },
	{ "folke/todo-comments.nvim", dependencies = { "nvim-lua/plenary.nvim" }, opts = {} },
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },

	-- Code
	{ "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- Navigation
	{ "nvim-telescope/telescope.nvim", tag = "0.1.5", dependencies = { "nvim-lua/plenary.nvim" } },
	{ "nvim-tree/nvim-tree.lua" },

	-- Git
	{ "lewis6991/gitsigns.nvim" },

	-- Completion
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			{ "hrsh7th/cmp-nvim-lsp", event = "InsertEnter" },
			{ "hrsh7th/cmp-emoji", event = "InsertEnter" },
			{ "hrsh7th/cmp-buffer", event = "InsertEnter" },
			{ "hrsh7th/cmp-path", event = "InsertEnter" },
			{ "hrsh7th/cmp-cmdline", event = "InsertEnter" },
			{ "saadparwaiz1/cmp_luasnip", event = "InsertEnter" },
			{ "L3MON4D3/LuaSnip", event = "InsertEnter", dependencies = { "rafamadriz/friendly-snippets" } },
			{ "hrsh7th/cmp-nvim-lua" },
			{ "roobert/tailwindcss-colorizer-cmp.nvim" },
		},
	},
	{
		"kdheepak/lazygit.nvim",
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},

	-- LSP and Formatting
	{ "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig" },
	{ "nvimtools/none-ls.nvim" },
	{ "jay-babu/mason-null-ls.nvim" },
})
