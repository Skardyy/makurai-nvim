---@class Makurai.Palette
---@field name string
---@field bg string
---@field fg string
---@field bg_alt string
---@field surface string
---@field surface_alt string
---@field on_fg string
---@field comment string
---@field selection string
---@field cursor string
---@field border string
---@field line string
---@field guide string
---@field error string
---@field purple string
---@field green string
---@field yellow string
---@field blue string
---@field orange string
---@field light_orange string
---@field cyan string
---@field command string
---@field normal string
---@field insert string
---@field visual string
---@field dark_green string
---@field dark_red string
---@field dark_yellow string

---@class Makurai.theme
---@field get fun(): Makurai.Palette
---@field extend fun(o: Makurai.Palette)

local M = {}

---@type Makurai.Palette
M.p = {
  name = "makurai_mage",
  mode = "dark",
  fg = "#ffffff",
  bg = "#15161b",
  surface = "#08090d",
  bg_alt = "#14161f",
  surface_alt = "#20202b",
  on_fg = "#000000",
  comment = "#5C6773",
  selection = "#264f78",
  border = "#a6accd",
  line = "#2D3640",
  LineNr = "#25282e",
  guide = "#2D3640",
  error = "#FF5555",
  purple = "#D2A6FF",
  green = "#95FB79",
  yellow = "#FFEE99",
  blue = "#82aaff",
  orange = "#FF7733",
  light_orange = "#211817",
  cyan = "#7dcfff",

  cursor = "#1e1f24",
  command = "#D2A6FF",
  normal = "#82aaff",
  insert = "#95FB79",
  visual = "#FFEE99",
  dark_green = "#023020",
  dark_red = "#480809",
  dark_yellow = "#857c4d"
}

M.copy_rogue = vim.deepcopy(M.p)
M.copy_mage = vim.deepcopy(M.p)

---@return Makurai.Palette
function M.get()
  return M.p
end

---@param o Makurai.Palette
function M.extend(o)
  M.p = vim.tbl_deep_extend("force", M.p, o)
end

return M
