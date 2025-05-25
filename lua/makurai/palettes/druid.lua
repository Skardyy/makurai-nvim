local base = require "makurai.palettes.mage".copy_rogue
local M = {}

---@type Makurai.Palette
M.p = vim.tbl_deep_extend("force", base, {
  name = "makurai_druid",
  fg = "#FFFFFF",
  orange = "#FF875F",
  yellow = "#FFFF87",
  green = "#87FF87",
  blue = "#76B6C7",
  purple = "#D2A6FF",
  comment = "#6C6C6C",
  light_orange = "#24221a",

  bg = "#1C1C1C",
  surface = "#080808",
  bg_alt = "#1C1C1C",
  surface_alt = "#262626",
  border = "#AFAFD7",
  line = "#3A3A3A",
  LineNr = "#262626",
  guide = "#3A3A3A",
  cursor = "#262623",
  selection = "#2A5B66",

  command = "#FF875F",
  normal = "#76B6C7",
  insert = "#87FF87",
  visual = "#FFFF87",
})


---@return Makurai.Palette
function M.get()
  return M.p
end

---@param o Makurai.Palette
function M.extend(o)
  M.p = vim.tbl_deep_extend("force", M.p, o)
end

return M
