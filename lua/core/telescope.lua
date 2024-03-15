local wk = require("which-key")

local ok, telescope = pcall(require, "telescope")
if not ok then
  return
end

local actions = require("telescope.actions")

telescope.setup{
  defaults = {
    mappings = {
      i = {
        ["<C-h>"] = "which_key",
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<Esc>"] = actions.close,
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

wk.register({
    f = { "<cmd>Telescope find_files<cr>", "Find File" }, 
    g = { "<cmd>Telescope live_grep<cr>", "Live Grep" }, 
    b = { "<cmd>Telescope buffers<cr>", "Buffers" }, 
},{ prefix = "<leader>" })
