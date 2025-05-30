local base = require "makurai.palettes.mage".copy_rogue
local M = {}

---@type Makurai.Palette
M.p = vim.tbl_deep_extend("force", base, {
  name = "makurai_warrior",
  fg = "#FFFFFF",
  orange = "#dc74ed",
  yellow = "#789CEA",
  green = "#98eb7a",
  blue = "#F4C367",
  purple = "#FF875F",

  bg = "#14161f",
  surface = "#08090d",
  bg_alt = "#15161b",
  surface_alt = "#20202b",

  command = "#dc74ed",
  normal = "#789CEA",
  insert = "#98eb7a",
  visual = "#F4C367",
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
