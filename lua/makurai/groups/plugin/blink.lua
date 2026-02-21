local M = {}

---@param p Makurai.Palette
function M.get(p)
  return {
    BlinkCmpKindText = { link = "String" },
    BlinkCmpKindMethod = { link = "Function" },
    BlinkCmpKindFunction = { link = "Function" },
    BlinkCmpKindConstructor = { link = "Type" },
    BlinkCmpKindField = { link = "Constant" },
    BlinkCmpKindVariable = { link = "Constant" },
    BlinkCmpKindClass = { link = "Type" },
    BlinkCmpKindInterface = { link = "Type" },
    BlinkCmpKindModule = { link = "Type" },
    BlinkCmpKindProperty = { link = "Constant" },
    BlinkCmpKindUnit = { link = "Constant" },
    BlinkCmpKindValue = { link = "Constant" },
    BlinkCmpKindEnum = { link = "Type" },
    BlinkCmpKindKeyword = { link = "Keyword" },
    BlinkCmpKindSnippet = { fg = p.diagnostic.hint },
    BlinkCmpKindColor = { fg = p.diagnostic.info },
    BlinkCmpKindFile = { fg = p.syntax.const },
    BlinkCmpKindReference = { fg = p.diagnostic.info },
    BlinkCmpKindFolder = { fg = p.diagnostic.info },
    BlinkCmpKindEnumMember = { link = "Constant" },
    BlinkCmpKindConstant = { link = "Constant" },
    BlinkCmpKindStruct = { link = "Type" },
    BlinkCmpKindEvent = { link = "Keyword" },
    BlinkCmpKindOperator = { link = "Keyword" },
    BlinkCmpKindTypeParameter = { link = "Identifier" },
    BlinkCmpItemAbbrMatch = { fg = p.syntax.type, bold = true },
    BlinkCmpItemAbbrMatchFuzzy = { fg = p.syntax.type },
    BlinkCmpItemAbbrDeprecated = { fg = p.syntax.comment, strikethrough = true },
    BlinkCmpMenu = { fg = p.syntax.comment },
    BlinkCmpSignatureHelpBorder = { link = "FloatBorder" },
    BlinkCmpMenuBorder = { link = "FloatBorder" },
    BlinkCmpDocBorder = { link = "FloatBorder" },
  }
end

return M
