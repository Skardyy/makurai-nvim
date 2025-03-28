local M = {}

---@param variant "normal"|"silent"
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

---@param variant "makurai"|"makurai_less"
function M.modify(variant, pal)
  if variant ~= "makurai" and variant ~= "makurai_less" then
    vim.schedule(function()
      vim.notify("modify key needs to be 'makurai' | 'makurai_less'", vim.log.levels.ERROR)
    end)
    return
  end

  local var = variant == "makurai" and "normal" or "silent"
  local theme = require("makurai.palettes." .. var)
  theme.extend(pal)
end

return M
