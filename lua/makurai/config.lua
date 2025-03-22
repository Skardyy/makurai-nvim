local M = {}

---@class Makurai.config
---@field transparent boolean

---@type Makurai.config
M.opts = {
  transparent = false
}

---@return Makurai.config opts
function M.get()
  return M.opts
end

---@param user_opts table
function M.extend(user_opts)
  if type(user_opts) ~= "table" then
    return
  end

  if type(user_opts.transparent) == "boolean" then
    M.opts.transparent = user_opts.transparent
  end
end

return M
