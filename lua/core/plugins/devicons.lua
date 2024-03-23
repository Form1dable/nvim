local ok, nvim_devicons = pcall(require, "nvim-web-devicons")
if not ok then
  return
end

nvim_devicons.setup {}

nvim_devicons.set_icon {
  astro = {
    --  󱓟 
    icon = "󱓞",
    color = "#FF7E33",
    name = "astro",
  },
  lockb = {
    icon = "",
    color = "#cbcb41",
    name = "lockb",
  },
  -- ["bunfig.toml"] = {
  --   icon = "󰳮",
  --   color = "#fbf0df",
  --   name = "bunfig.toml",
  -- },
  ["tsx"] = {
    icon = "",
    color = "#519aba",
    cterm_color = "26",
    name = "Tsx",
  },
  toml = {
    icon = "",
    color = "#6e8086",
    name = "toml",
  },
  [".npmignore"] = {
    icon = "",
    color = "#c63c42",
    name = ".npmignore",
  },
  ["tsconfig.tsbuildinfo"] = {
    icon = "",
    color = "#cbcb41",
    name = "tsconfig.tsbuildinfo",
  },
}
