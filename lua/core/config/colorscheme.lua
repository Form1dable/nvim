vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.cmd("let g:gruvbox_material_background= 'hard'")
vim.cmd("let g:gruvbox_material_transparent_background=2")
vim.cmd("let g:gruvbox_material_diagnostic_line_highlight=1")
vim.cmd("let g:gruvbox_material_diagnostic_virtual_text='colored'")
vim.cmd("let g:gruvbox_material_enable_bold=1")
vim.cmd("let g:gruvbox_material_enable_italic=1")

-- changing bg and border colors
vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
vim.api.nvim_set_hl(0, "LspInfoBorder", { link = "Normal" })
vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })

vim.cmd("colorscheme gruvbox-material")
