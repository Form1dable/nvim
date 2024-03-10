local wk = require("which-key")

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      }
    },
    file_ignore_patterns = {
    "node_modules/.*",
    "single_meshes_glb/.*",
    "%.lock$",
    "%.swp$",
    "%.class$",
    "%.o$",
    "%.out$",
    "%.log$",
    "%.tmp$",
    "%.exe$",
    "%.dll$",
    "%.so$",
    "%.dylib$",
    "%.zip$",
    "%.tar.gz$",
    "%.tgz$",
    "%.rar$",
    "%.gz$",
    "%.bz2$",
    "%.7z$",
    "%.iso$",
    "%.dmg$",
    "%.bin$",
    "%.db$",
    "%.db.sqlite$",
    "%.sql$",
    "%.db2$",
    "%.sqlite$",
    "%.sqlite3$",
    "%.sublime-workspace$",
    "%.sublime-project$",
    "%.pdf$",
    "%.jpg$",
    "%.jpeg$",
    "%.png$",
    "%.gif$",
    "%.tiff$",
    "%.bmp$",
    "%.ico$",
    "%.svg$",
    "%.woff$",
    "%.woff2$",
    "%.ttf$",
    "%.eot$",
    "%.mp3$",
    "%.ogg$",
    "%.wav$",
    "%.mp4$",
    "%.mkv$",
    "%.avi$",
    "%.webm$",
    "%.mov$",
    "%.wmv$",
    "%.flv$",
    "%.flac$",
    "%.aac$",
    "%.m4a$",
    "%.opus$",
  },
  },
  pickers = {
  },
  extensions = {
  }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>h', builtin.help_tags, {})

wk.register({
    f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
    g = { "<cmd>Telescope live_grep<cr>", "Live Grep" }, -- create a binding with label
    b = { "<cmd>Telescope buffers<cr>", "Buffers" }, -- create a binding with label
},{ prefix = "<leader>" })
