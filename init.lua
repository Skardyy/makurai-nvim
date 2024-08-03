require("makurai.theme")

-- Lualine
local ok, lualine = pcall(require, "lualine")
if ok then
  lualine.setup({
    options = {
      theme = require("makurai.plugins.lualine"),
    },
  })
end

return {}
