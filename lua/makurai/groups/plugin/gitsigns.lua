local M = {}

---@param p Makurai.Palette
function M.get(p)
  return {
    GitSignsAdd = { fg = p.git.add },
    GitSignsChange = { fg = p.git.change },
    GitSignsDelete = { fg = p.git.delete },
    GitSignsAddNr = { fg = p.git.add },
    GitSignsChangeNr = { fg = p.git.change },
    GitSignsDeleteNr = { fg = p.git.delete },
    GitSignsAddLn = { bg = p.git.bg_add },
    GitSignsChangeLn = { bg = p.git.bg_change },
    GitSignsDeleteLn = { bg = p.git.bg_delete },
    GitSignsCurrentLineBlame = { fg = p.syntax.comment },
  }
end

return M
