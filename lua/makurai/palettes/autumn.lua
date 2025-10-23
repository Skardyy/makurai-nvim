local base = require "makurai.palettes.dark".copy_autumn
local M = {}

---@type Makurai.Palette
M.p = vim.tbl_deep_extend("force", base, {
  name      = "makurai_autumn",
  syntax = {
    keyword = "#ff6340",
    fn      = "#facc75",
    str     = "#a2d93d",
    const   = "#e67399",
    type    = "#60bfbf",
  },
	diagnostic = {
		ok = "#a2d93d",
    error = "#fc4c4c"
	},
	editor = {
		selection = "#602c3d",
		match = "#602c3d",
	},
	term = {
		red = "#fc4c4c",
		green = "#a2d93d",
		yellow = "#facc75",
		blue = "#60bfbf",
		magenta = "#e67399",
		cyan = "#60bfbf",
	},
	git = {
		add = "#a2d93d",
		change = "#facc75",
		delete = "#fc4c4c",
	},
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
