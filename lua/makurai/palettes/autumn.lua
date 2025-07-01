local base = require "makurai.palettes.dark".copy_autumn
local M = {}

---@type Makurai.Palette
M.p = vim.tbl_deep_extend("force", base, {
  name = "makurai_autumn",
  orange = "#fc6501",
  yellow = "#fac25a",
  green = "#a1cd32",
  purple = "#FF6B9D",
  blue = "#fc4c4c",

  selection = "#602c3d",
  dir = "#a1cd32",
  match = "#fac25a",

  command = "#FF6B9D",
  normal = "#5abffa",
  insert = "#a1cd32",
  visual = "#fac25a",
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
