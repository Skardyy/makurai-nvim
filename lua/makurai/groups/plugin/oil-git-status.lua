local M = {}

---@param p Makurai.Palette
function M.get(p)
  return {
    OilGitStatusIndexIgnored = { fg = p.syntax.comment },
    OilGitStatusWorkingTreeIgnored = { link = "OilGitStatusIndexIgnored" },
    OilGitStatusIndexUntracked = { link = "OilGitStatusIndexIgnored" },
    OilGitStatusWorkingTreeUntracked = { link = "OilGitStatusIndexIgnored" }
  }
end

return M
