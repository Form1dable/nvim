require("core.lazy")
require("core.whichkey")

-- Config
require("core.config.options")
require("core.config.keymaps")
require("core.config.autocmd")
require("core.config.colorscheme")

-- Syntax and completion
require("core.completion.cmp")
require("core.completion.treesitter")

require("core.git.gitsigns")
require("core.lsp.mason")
require("core.lsp.lspconfig")
require("core.lsp.none-ls")

-- Plugins
require("core.plugins.autopairs")
require("core.plugins.telescope")
require("core.plugins.nvimtree")
require("core.plugins.devicons")
require("core.plugins.lualine")
require("core.plugins.bufferline")
require("core.plugins.dressing")
require("core.plugins.indentline")
require("core.plugins.incline")
require("core.plugins.lightspeed")
require("core.plugins.trouble")
