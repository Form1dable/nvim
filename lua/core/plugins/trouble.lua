local ok, trouble = pcall(require, "trouble")
if not ok then
	return
end

trouble.setup({})

-- Lua
vim.keymap.set("n", "<leader>d", function()
	require("trouble").toggle()
end)
