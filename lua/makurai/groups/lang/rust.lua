local M = {}

---@param p Makurai.Palette
function M.get(p)
  return {
    ["@lsp.typemod.keyword.unsafe.rust"] = { fg = p.diagnostic.error },
  }
end

return M
