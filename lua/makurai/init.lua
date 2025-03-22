local M = {}

---@param variant "normal"|"silent"
function M.load(variant)
  ---@type Makurai.Palette
  local p = require("makurai.palettes." .. variant)
  require("makurai.theme").load(p)
end

---@param user_opts Makurai.config
function M.setup(user_opts)
  require "makurai.config".extend(user_opts)
end

return M
