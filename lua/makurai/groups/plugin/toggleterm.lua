local M = {}

---@param p Makurai.Palette
function M.get(p)
  return {
    ToggleTerm = { link = "Normal" },
    ToggleTermBorder = { link = "FloatBorder" },
  }
end

return M
