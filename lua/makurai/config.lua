local M = {}

---@class Makurai.config
---@field transparent boolean
---@field bordered boolean
---@field increase_contrast boolean

---@type Makurai.config
M.opts = {
  transparent = false,
  bordered = false,
  increase_contrast = false,
}

---@return Makurai.config opts
function M.get()
  return M.opts
end

---@param user_opts table
function M.extend(user_opts)
  M.opts = vim.tbl_deep_extend('force', M.opts, user_opts)
end

return M
