local M = {}

---@param p Makurai.Palette
function M.get(p)
  return {
    CmpItemKindText = { link = "String" },
    CmpItemKindMethod = { link = "Function" },
    CmpItemKindFunction = { link = "Function" },
    CmpItemKindConstructor = { link = "Type" },
    CmpItemKindField = { link = "Constant" },
    CmpItemKindVariable = { link = "Constant" },
    CmpItemKindClass = { link = "Type" },
    CmpItemKindInterface = { link = "Type" },
    CmpItemKindModule = { link = "Type" },
    CmpItemKindProperty = { link = "Constant" },
    CmpItemKindUnit = { link = "Constant" },
    CmpItemKindValue = { link = "Constant" },
    CmpItemKindEnum = { link = "Type" },
    CmpItemKindKeyword = { link = "Keyword" },
    CmpItemKindSnippet = { fg = p.diagnostic.hint },
    CmpItemKindColor = { fg = p.diagnostic.info },
    CmpItemKindFile = { fg = p.syntax.const },
    CmpItemKindReference = { fg = p.diagnostic.info },
    CmpItemKindFolder = { fg = p.diagnostic.info },
    CmpItemKindEnumMember = { link = "Constant" },
    CmpItemKindConstant = { link = "Constant" },
    CmpItemKindStruct = { link = "Type" },
    CmpItemKindEvent = { link = "Keyword" },
    CmpItemKindOperator = { link = "Keyword" },
    CmpItemKindTypeParameter = { link = "Identifier" },
    CmpItemAbbrMatch = { fg = p.syntax.type, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = p.syntax.type },
    CmpItemAbbrDeprecated = { fg = p.syntax.comment, strikethrough = true },
    CmpItemMenu = { fg = p.syntax.comment },
  }
end

return M
