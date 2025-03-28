local base = require "makurai.palettes.normal"
---@type Makurai.Palette
return vim.tbl_deep_extend("force", base, {
  name = "makurai_less",
  fg = "#e8e8ea",
  purple = "#FF7733",
  green = "#92c468",
  yellow = "#9d9eb0",
  blue = "#8e8e90",
  orange = "#f7e254",
  light_orange = "#24221a",
})
