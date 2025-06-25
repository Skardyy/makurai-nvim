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

  command = "#dc74ed",
  normal = "#789CEA",
  insert = "#98eb7a",
  visual = "#F4C367",

  dark_yellow = "#2A2500",
  warning = "#FFE566",
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
