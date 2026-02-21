local M = {}

---@class Makurai.config
---@field transparent boolean
---@field cursor boolean

---@type Makurai.config
M.opts = {
  transparent = false,
  cursor = false
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
