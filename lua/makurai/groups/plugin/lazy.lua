local M = {}

---@param p Makurai.Palette
function M.get(p)
  return {
    LazyNormal = { bg = p.editor.surface },
    LazyButton = { fg = p.syntax.comment },
    LazyButtonActive = { fg = p.editor.fg, bg = p.editor.selection, bold = true },
    LazyH1 = { fg = p.syntax.keyword, bold = true },
    LazyH2 = { fg = p.syntax.fn, bold = true },
    LazySpecial = { link = "Type" },
    LazyProgressTodo = { fg = p.editor.border },
    LazyProgressDone = { fg = p.diagnostic.ok },
    LazyProp = { link = "Constant" },
    LazyValue = { link = "String" },
    LazyReasonPlugin = { fg = p.syntax.fn },
    LazyReasonRuntime = { link = "Keyword" },
    LazyReasonEvent = { fg = p.diagnostic.info },
    LazyCommit = { link = "Constant" },
    LazyComment = { fg = p.syntax.comment },
  }
end

return M
