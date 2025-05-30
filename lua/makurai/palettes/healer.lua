local base = require "makurai.palettes.mage".copy_rogue
local M = {}

---@type Makurai.Palette
M.p = vim.tbl_deep_extend("force", base, {
  name = "makurai_healer",
  mode = "light",

  orange = "#E35043",
  yellow = "#3D76F3",
  green = "#51A150",
  blue = "#AB31A9",
  purple = "#976700",
  fg = "#323640",
  comment = "#A0A1A7",
  error = "#CC0000",

  bg = "#f8f8fc",
  surface = "#ececf2",
  bg_alt = "#ebebf4",
  surface_alt = "#f0f0f9",
  border = "#7e8a9e",
  on_fg = "#FAFAFA",
  selection = "#C6DBFF",
  line = "#3D76F3",
  LineNr = "#A0A1A7",
  guide = "#D1D5DB",

  light_orange = "#f7d1c1",
  cyan = "#22a3f0",
  cursor = "#f0f0fa",

  command = "#E35043",
  normal = "#AB31A9",
  insert = "#51A150",
  visual = "#3D76F3",

  dark_green  = "#E6F4EA",
  dark_red    = "#FDE7E9",
  dark_yellow = "#FFF7E0",
  dark_cyan   = "#E7F3FA",
  warning     = "#D68D00"
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
