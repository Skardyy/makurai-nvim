local base = require "makurai.palettes.mage".copy_rogue
local M = {}

---@type Makurai.Palette
M.p = vim.tbl_deep_extend("force", base, {
  name = "makurai_rogue",
  fg = "#e8e8ea",
  purple = "#FF875F",
  green = "#92c468",
  yellow = "#95A4C6",
  blue = "#C4873A",
  orange = "#f7e254",
  light_orange = "#24221a",

  command = "#C4873A",
  normal = "#95A4C6",
  insert = "#92c468",
  visual = "#f7e254",
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
