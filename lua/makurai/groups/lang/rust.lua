local M = {}

---@param p Makurai.Palette
function M.get(p)
  return {
    ["@lsp.typemod.keyword.unsafe.rust"] = { fg = p.diagnostic.error },
    ["@lsp.type.macro.rust"] = { link = "Function" },
    ["@lsp.type.decorator.rust"] = { link = "Function" },
  }
end

return M
