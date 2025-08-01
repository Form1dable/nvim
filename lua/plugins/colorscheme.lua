return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Gruvbox-material settings
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_enable_bold = 1

      -- Load colorscheme
      vim.cmd.colorscheme("gruvbox-material")

      -- Override the main background highlight groups to true black
      local groups = {
        "Normal",
        "NormalNC",
        "NormalFloat",
        "EndOfBuffer",
        "SignColumn",
        "VertSplit",
        "WinSeparator",
        "StatusLine",
        "StatusLineNC",
        "TabLine",
        "TabLineFill",
        "TabLineSel",
        "CursorLine",
        "CursorColumn",
        "Pmenu",
        "PmenuSel",
        "PmenuSbar",
        "PmenuThumb",
        "Folded",
        "LineNr",
        "CursorLineNr",
        "TelescopeNormal",
        "TelescopeBorder",
        "TelescopePromptNormal",
        "TelescopePromptBorder",
      }

      for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = "#000000", ctermbg = 0 })
      end
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
