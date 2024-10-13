local ok, mason = pcall(require, "mason")
if not ok then
	return
end

-- import mason-lspconfig
local mason_lspconfig = require("mason-lspconfig")
-- enable mason and configure icons
mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

mason_lspconfig.setup({
	ensure_installed = {
		"tsserver",
		"html",
		"cssls",
		"lua_ls",
		"graphql",
		"emmet_ls",
		"pyright",
		"clandg",
	},
	automatic_installation = true, -- not the same as ensure_installed
})
