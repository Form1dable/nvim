local mason_null_ls = require("mason-null-ls")
local null_ls = require("null-ls")
local null_ls_utils = require("null-ls.utils")

mason_null_ls.setup({
  ensure_installed = {
    "prettier", -- prettier formatter
    "stylua", -- lua formatter
    "black", -- python formatter
    "pylint", -- python linter
    "eslint_d", -- js linter
  },
})

