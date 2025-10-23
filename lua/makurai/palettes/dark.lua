---@class Makurai.Syntax
---@field const string
---@field str string
---@field fn string
---@field type string
---@field keyword string
---@field comment string

---@class Makurai.Diagnostic
---@field error string
---@field warning string
---@field info string
---@field hint string
---@field ok string

---@class Makurai.Editor
---@field bg string
---@field surface string
---@field statusline string
---@field fg string
---@field fg_inverted string
---@field border string
---@field divider string
---@field guide string
---@field selection string
---@field match string
---@field cursor_line string
---@field line_nr string
---@field line_nr_active string

---@class Makurai.Terminal
---@field black string
---@field red string
---@field green string
---@field yellow string
---@field blue string
---@field magenta string
---@field cyan string
---@field white string
---@field bright_black string

---@class Makurai.Git
---@field add string
---@field change string
---@field delete string
---@field bg_add string
---@field bg_delete string
---@field bg_change string
---@field bg_text string

---@class Makurai.Palette
---@field name string
---@field mode string
---@field syntax Makurai.Syntax
---@field diagnostic Makurai.Diagnostic
---@field editor Makurai.Editor
---@field term Makurai.Terminal
---@field git Makurai.Git

---@class Makurai.theme
---@field get fun(): Makurai.Palette
---@field extend fun(o: Makurai.Palette)
---@field p Makurai.Palette
local M = {}

---@type Makurai.Palette
M.p = {
	name = "makurai_dark",
	mode = "dark",
	syntax = {
		const = "#D2A6FF",
		str = "#95FB79",
		fn = "#FFEE99",
		type = "#82aaff",
		keyword = "#FF7733",
		comment = "#5C6773",
	},
	diagnostic = {
		error = "#FF5555",
		warning = "#FFB84D",
		info = "#7dcfff",
		hint = "#7dcfff",
		ok = "#95FB79",
	},
	editor = {
		bg = "#15161b",
		surface = "#22202a",
		statusline = "none",
		----------------------------
		fg = "#ffffff",
		fg_inverted = "#000000",
		----------------------------
		guide = "#2d3640",
		divider = "#000000",
		border = "#4a5868",
		selection = "#264f78",
		match = "#264f78",
		cursor_line = "#1e1f24",
		line_nr = "#34383d",
		line_nr_active = "#525960",
	},
	term = {
		black = "#15161b",
		red = "#FF5555",
		green = "#95FB79",
		yellow = "#FFEE99",
		blue = "#82aaff",
		magenta = "#D2A6FF",
		cyan = "#66BFFF",
		white = "#FFFFFF",
		bright_black = "#5C6773",
	},
	git = {
		add = "#95FB79",
		change = "#FFEE99",
		delete = "#FF5555",
		bg_add = "#0F2614",
		bg_delete = "#330A0A",
		bg_change = "#2B1A00",
		bg_text = "#183947",
	},
}

M.copy_autumn = vim.deepcopy(M.p)

---@return Makurai.Palette
function M.get()
	return M.p
end

---@param o Makurai.Palette
function M.extend(o)
	M.p = vim.tbl_deep_extend("force", M.p, o)
end

return M
