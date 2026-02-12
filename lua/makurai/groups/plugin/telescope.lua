local M = {}

---@param p Makurai.Palette
function M.get(p)
  return {
    TelescopeBorder = { fg = p.editor.border },
    TelescopePromptTitle = { bg = p.syntax.keyword, bold = true, fg = p.editor.fg_inverted },
    TelescopePreviewTitle = { bg = p.term.yellow, bold = true, fg = p.editor.fg_inverted },
    TelescopeResultsTitle = { bg = p.term.green, bold = true, fg = p.editor.fg_inverted },
  }
end

return M
