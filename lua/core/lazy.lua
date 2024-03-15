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
  { "morhetz/gruvbox", lazy = false, priority = 1000},
  { "nyoom-engineering/oxocarbon.nvim" },
  { "marko-cerovac/material.nvim" },
  { "cpea2506/one_monokai.nvim" },

  -- Customization
  { "ryanoasis/vim-devicons" },
  { "nvim-tree/nvim-web-devicons", event = "VeryLazy", }, 
  { "stevearc/dressing.nvim", opts = {}, },

  -- Utilities
  { "windwp/nvim-autopairs"}, 
  { "nvim-treesitter/nvim-treesitter", dependencies = { { "nvim-treesitter/nvim-treesitter-textobjects", }, }, },
  { "nvim-lualine/lualine.nvim", dependencies = { 'nvim-tree/nvim-web-devicons' } },
  { "akinsho/bufferline.nvim" },
  { "folke/which-key.nvim", event = "VeryLazy", },
  { "lukas-reineke/indent-blankline.nvim" },

  -- Navigation
  { 'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' } },
  { "nvim-tree/nvim-tree.lua" },

  -- Completion
  { "hrsh7th/nvim-cmp",
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp", event = "InsertEnter", },
      { "hrsh7th/cmp-emoji", event = "InsertEnter", },
      { "hrsh7th/cmp-buffer", event = "InsertEnter", },
      { "hrsh7th/cmp-path", event = "InsertEnter", },
      { "hrsh7th/cmp-cmdline", event = "InsertEnter", },
      { "saadparwaiz1/cmp_luasnip", event = "InsertEnter", },
      { "L3MON4D3/LuaSnip", event = "InsertEnter", dependencies = { "rafamadriz/friendly-snippets", }, },
      { "hrsh7th/cmp-nvim-lua", },
      { "roobert/tailwindcss-colorizer-cmp.nvim", },
    },},

  -- LSP
  { "williamboman/mason.nvim", dependencies = {{"williamboman/mason-lspconfig.nvim"}} },

})

