local base = require "makurai.palettes.dark".copy_spring
local M = {}

---@type Makurai.Palette
M.p = vim.tbl_deep_extend("force", base, {
  name      = "makurai_spring",
  orange    = "#FFB347",
  yellow    = "#D4FF59",
  green     = "#37dbb5",
  purple    = "#D8A5FF",
  blue      = "#66E6FF",

  selection = "#35424a",
  dir       = "#D4FF59",
  cyan      = "#66E6FF",

  command   = "#D8A5FF",
  normal    = "#66E6FF",
  insert    = "#D4FF59",
  visual    = "#FFB347",
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
