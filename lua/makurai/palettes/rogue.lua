local base = require "makurai.palettes.mage".copy_rogue
local M = {}

---@type Makurai.Palette
M.p = vim.tbl_deep_extend("force", base, {
  name = "makurai_rogue",
  fg = "#e8e8ea",
  purple = "#FF7733",
  green = "#92c468",
  yellow = "#9d9eb0",
  blue = "#8e8e90",
  orange = "#f7e254",
  light_orange = "#24221a",

  command = "#FF7733",
  normal = "#8e8e90",
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
