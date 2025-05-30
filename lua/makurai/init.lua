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
  if variant ~= "mage" and variant ~= "rogue" and variant ~= "healer" and variant ~= "warrior" then
    vim.schedule(function()
      vim.notify("modify key needs to be 'makurai_mage' | 'makurai_rogue' | 'makurai_healer", vim.log.levels.ERROR)
    end)
    return
  end

  local theme = require("makurai.palettes." .. var)
  theme.extend(pal)
end

return M
