local M = {}

---@param p Makurai.Palette
function M.get(p)
  return {
    WhichKeyNormal = { bg = p.editor.surface },
    WhichKeyValue = { link = "Identifier" },
    WhichKeySeparator = { link = "Comment" },
  }
end

return M
