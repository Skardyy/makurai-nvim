local M = {}

---@param variant "normal"|"silent"
function M.load(variant)
  ---@type Makurai.Palette
  local p = require("makurai.palettes." .. variant)
  require("makurai.theme").load(p)

  -- Lualine
  local ok, lualine = pcall(require, "lualine.config")
  if ok then
    local lualine_config = lualine.get_config()
    lualine_config.options.theme = require("makurai.plugins.lualine").load(p)
    lualine.apply_configuration(lualine_config)
  end
end

return M
