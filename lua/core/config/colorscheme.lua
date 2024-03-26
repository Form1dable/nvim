vim.opt.termguicolors = true
vim.opt.background = "dark"

local ok, kanagawa = pcall(require, "kanagawa")
if not ok then
	return
end

vim.o.background = "dark" -- or "light" for light mode
vim.cmd("let g:gruvbox_material_background= 'hard'")
--vim.cmd("let g:gruvbox_material_transparent_background=2")
vim.cmd("let g:gruvbox_material_diagnostic_line_highlight=1")
vim.cmd("let g:gruvbox_material_diagnostic_virtual_text='colored'")
vim.cmd("let g:gruvbox_material_enable_bold=1")
vim.cmd("let g:gruvbox_material_enable_italic=1")
vim.cmd([[colorscheme gruvbox-material]]) -- Set color scheme
-- changing bg and border colors
vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
vim.api.nvim_set_hl(0, "LspInfoBorder", { link = "Normal" })
vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })

-- Default options:
--kanagawa.setup({
--	compile = false, -- enable compiling the colorscheme
--	undercurl = true, -- enable undercurls
--	commentStyle = { italic = true },
--	functionStyle = {},
--	keywordStyle = { italic = true },
--	statementStyle = { bold = true },
--	typeStyle = {},
--	transparent = false, -- do not set background color
--	dimInactive = false, -- dim inactive window `:h hl-NormalNC`
--	terminalColors = true, -- define vim.g.terminal_color_{0,17}
--	colors = {
--		-- https://github.com/rebelot/kanagawa.nvim/blob/master/lua/kanagawa/themes.lua
--		palette = {},
--		theme = {
--			wave = {},
--			lotus = {},
--			dragon = {},
--			all = {
--				ui = {
--					bg_gutter = "none",
--				},
--			},
--		},
--	},
--	overrides = function(colors) -- add/modify highlights
--		return {}
--	end,
--	theme = "wave", -- default
--	background = { -- map the value of 'background' option to a theme
--		dark = "dragon", -- try "dragon" !
--		light = "lotus",
--	},
--})
--
--vim.cmd("colorscheme kanagawa")
