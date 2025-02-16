local M = {}

function M.load()
  require("makurai.theme").load()

  -- Lualine
  local ok, lualine = pcall(require, "lualine.config")
  if ok then
    local lualine_config = lualine.get_config()
    lualine_config.options.theme = require("makurai.plugins.lualine")
    lualine.apply_configuration(lualine_config)
  end
end

return M
