local base = require "makurai.palettes.mage".copy_rogue
local M = {}

---@type Makurai.Palette
M.p = vim.tbl_deep_extend("force", base, {
  name = "makurai_druid",
  fg = "#FFFFFF",
  orange = "#FF875F",
  yellow = "#EAE87A",
  green = "#92c468",
  blue = "#7C9EDB",
  purple = "#D2A6FF",
  comment = "#6C6C6C",
  light_orange = "#24221a",

  bg = "#18191B",
  surface = "#0A0A0C",
  bg_alt = "#1D1E22",
  surface_alt = "#292A31",
  border = "#AFAFD7",
  line = "#3A3A3A",
  LineNr = "#262626",
  guide = "#3A3A3A",
  cursor = "#262623",
  selection = "#2D4A6F",

  command = "#FF875F",
  normal = "#7C9EDB",
  insert = "#92c468",
  visual = "#EAE87A",
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
