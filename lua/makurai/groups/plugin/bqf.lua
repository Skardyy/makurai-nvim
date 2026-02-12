local M = {}

---@param p Makurai.Palette
function M.get(p)
  return {
    BqfPreviewFloat = { bg = p.editor.bg, blend = 0 },
    BqfPreviewBorder = { fg = p.editor.border, bg = p.editor.bg, blend = 0 },
    BqfPreviewCursorLine = { link = "CursorLine" },
    BqfPreviewCursor = { fg = p.editor.fg_inverted, bg = p.term.yellow },
  }
end

return M
