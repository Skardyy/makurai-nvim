local M = {}

---@param p Makurai.Palette
function M.load(p)
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.opt.background = p.mode
  vim.g.colors_name = p.name
  vim.o.termguicolors = true

  local ps = require "makurai.groups".load(p)
  for group, options in pairs(ps) do
    vim.api.nvim_set_hl(0, group, options)
  end
end

return M
