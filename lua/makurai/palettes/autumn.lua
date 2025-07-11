local base = require "makurai.palettes.dark".copy_autumn
local M = {}

---@type Makurai.Palette
M.p = vim.tbl_deep_extend("force", base, {
  name      = "makurai_autumn",
  orange    = "#ff6340",
  yellow    = "#facc75",
  green     = "#a2d93d",
  purple    = "#e67399",
  blue      = "#60bfbf",

  selection = "#602c3d",
  dir       = "#ff6340",
  match     = "#facc75",

  command   = "#e67399",
  normal    = "#60bfbf",
  insert    = "#a2d93d",
  visual    = "#facc75",
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
