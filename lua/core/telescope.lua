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
      "dist/",
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
      vimgrep_arguments = {
       "rg",
       "--color=never",
       "--no-heading",
       "--with-filename",
       "--line-number",
       "--column",
       "--smart-case",
      },
      prompt_prefix = "   ",
      selection_caret = "  ",
      entry_prefix = "  ",
      initial_mode = "insert",
      selection_strategy = "reset",
      sorting_strategy = "ascending",
      layout_strategy = "horizontal",
      layout_config = {
         horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
            results_width = 0.8,
         },
         vertical = {
            mirror = false,
         },
         width = 0.87,
         height = 0.80,
         preview_cutoff = 120,
      },
      file_sorter = require("telescope.sorters").get_fuzzy_file,
      generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
      path_display = { "truncate" },
      winblend = 0,
      border = {},
      borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
      color_devicons = true,
      use_less = true,
      set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
      file_previewer = require("telescope.previewers").vim_buffer_cat.new,
      grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
      qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
      -- Developer configurations: Not meant for general override
      buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
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
