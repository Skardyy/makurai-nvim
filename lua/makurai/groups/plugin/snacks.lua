local M = {}

---@param p Makurai.Palette
function M.get(p)
  return {
    SnacksPickerDir = { fg = p.editor.fg },
  }
end

return M
