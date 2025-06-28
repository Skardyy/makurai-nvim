local M = {}

--- @param variant "dark"|"light"|"autumn"|"spring"
function M.load(variant)
  ---@type Makurai.theme
  local theme = require("makurai.palettes." .. variant)
  local p = theme.get()
  require("makurai.theme").load(p)
end

---@param user_opts Makurai.config
function M.setup(user_opts)
  require "makurai.config".extend(user_opts)
end

---@param variant "dark"|"light"|"autumn"|"spring"
function M.modify(variant, pal)
  if variant ~= "dark" and variant ~= "light" and variant ~= "autumn" and variant ~= "spring" then
    vim.schedule(function()
      vim.notify("modify key needs to be 'dark' | 'light' | 'autumn | 'spring'", vim.log.levels.ERROR)
    end)
    return
  end

  local theme = require("makurai.palettes." .. variant)
  theme.extend(pal)
end

return M
