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
  -- Customization
  { "morhetz/gruvbox", lazy = false, priority = 1000},
  { "nyoom-engineering/oxocarbon.nvim" },
  {"ryanoasis/vim-devicons"},
  { "nvim-tree/nvim-web-devicons", event = "VeryLazy", }, 

  -- General
  { "windwp/nvim-autopairs"}, 
  { "nvim-treesitter/nvim-treesitter", dependencies = { { "nvim-treesitter/nvim-treesitter-textobjects", }, }, },
  { "nvim-lualine/lualine.nvim", dependencies = { 'nvim-tree/nvim-web-devicons' } },

  -- Navigation
  { 'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' } },
  { "nvim-tree/nvim-tree.lua" },

  -- Utils
  { "folke/which-key.nvim", event = "VeryLazy", },
})

