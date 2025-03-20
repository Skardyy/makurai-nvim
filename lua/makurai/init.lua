local M = {}

---@param variant "normal"|"silent"
function M.load(variant)
  ---@type Makurai.Palette
  local p = require("makurai.palettes." .. variant)
  require("makurai.theme").load(p)
end

return M
