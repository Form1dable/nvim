require("core.lazy")

-- Config
require("core.config.options")
require("core.config.keymaps")
require("core.config.autocmd")
require("core.config.colorscheme")

-- Syntax, Completion and Diagonostic
require("core.completion.cmp")
require("core.completion.treesitter")
require("core.plugins.trouble")

-- GIT
require("core.git.gitsigns")

-- LSP
require("core.lsp.mason")
require("core.lsp.lspconfig")
require("core.lsp.none-ls")

-- Utils
require("core.plugins.autopairs")
require("core.plugins.telescope")
require("core.plugins.nvimtree")
require("core.plugins.devicons")
require("core.plugins.lualine")
require("core.plugins.indentline")
require("core.plugins.incline")
require("core.plugins.bufferline")
require("core.plugins.lightspeed")
--require("core.whichkey")
