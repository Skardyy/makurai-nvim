local M = {}

---@param p Makurai.Palette
function M.get(p)
  return {
    typescriptFuncCallArg = { fg = p.editor.fg },
    typescriptBraces = { fg = p.editor.fg },
    tsxTagName = { fg = p.syntax.type },
    tsxAttrib = { fg = p.syntax.fn },
    typescriptArrowFunc = { fg = p.editor.fg },
  }
end

return M
