local base = require "makurai.palettes.mage".copy_rogue
local M = {}

---@type Makurai.Palette
M.p = vim.tbl_deep_extend("force", base, {
  name = "makurai_warrior",
  fg = "#FFFFFF",
  orange = "#ff5f5f",
  yellow = "#92c468",
  blue = "#F4C367",

  green = "#FFEE99",
  purple = "#a8ceba",

  command = "#ff5f5f",
  normal = "#a8ceba",
  insert = "#92c468",
  visual = "#F4C367",

  error = "#fc4747",
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
