local M = {}

---@type Makurai.Palette
M.p = {
	name = "makurai_light",
	mode = "light",
	syntax = {
		const = "#8A2BE2",
		str = "#2E8B57",
		fn = "#D2691E",
		type = "#1E90FF",
		keyword = "#DC143C",
		comment = "#64748b",
	},
	diagnostic = {
		error = "#CC0000",
		warning = "#FF8C00",
		info = "#1E90FF",
		hint = "#1E90FF",
		ok = "#2E8B57",
	},
	editor = {
		bg = "#f8f8fc",
		surface = "#ececf2",
		statusline = "none",
		----------------------------
		fg = "#2D3748",
		fg_inverted = "#FFFFFF",
		----------------------------
		guide = "#A0AEC0",
		divider = "#CBD5E0",
		border = "#A0AEC0",
		selection = "#C6DBFF",
		match = "#C6DBFF",
		cursor_line = "#f0f0fa",
		line_nr = "#718096",
		line_nr_active = "#1E90FF",
	},
	term = {
		black = "#F8F9FA",
		red = "#DC143C",
		green = "#2E8B57",
		yellow = "#D2691E",
		blue = "#1E90FF",
		magenta = "#8A2BE2",
		cyan = "#00BFFF",
		white = "#2D3748",
		bright_black = "#64748b",
	},
	git = {
		add = "#2E8B57",
		change = "#D2691E",
		delete = "#DC143C",
		bg_add = "#F0FFF4",
		bg_delete = "#FFF5F5",
		bg_change = "#FFFAF0",
		bg_text = "#EBF8FF",
	},
}

---@return Makurai.Palette
function M.get()
	return M.p
end

---@param o Makurai.Palette
function M.extend(o)
	M.p = vim.tbl_deep_extend("force", M.p, o)
end

return M
