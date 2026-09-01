local M = {}

---@param p Makurai.Palette
function M.get(p)
  return {
    typescriptFuncCallArg   = { link = "Identifier" },
    typescriptBraces        = { link = "Identifier" },
    typescriptEndColons     = { link = "Identifier" },
    typescriptArrowFunc     = { link = "Identifier" },
    typescriptFuncTypeArrow = { link = "Identifier" },
    tsxAttrib               = { link = "Function" },
    typescriptArrayMethod   = { link = "Function" },
    tsxTagName              = { link = "Type" },
    typescriptMember        = { link = "Type" },
  }
end

return M
