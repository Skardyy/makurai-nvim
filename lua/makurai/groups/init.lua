local M = {}

local function merge(into, from)
  for key, value in pairs(from) do
    into[key] = value
  end
end

---@param p Makurai.Palette
function M.load(p)
  local opts = require("makurai.config").get()

  -- terminal colors
  vim.g.terminal_color_0 = p.term.black
  vim.g.terminal_color_1 = p.term.red
  vim.g.terminal_color_2 = p.term.green
  vim.g.terminal_color_3 = p.term.yellow
  vim.g.terminal_color_4 = p.term.blue
  vim.g.terminal_color_5 = p.term.magenta
  vim.g.terminal_color_6 = p.term.cyan
  vim.g.terminal_color_7 = p.term.white
  vim.g.terminal_color_8 = p.term.bright_black
  vim.g.terminal_color_9 = p.term.red
  vim.g.terminal_color_10 = p.term.green
  vim.g.terminal_color_11 = p.term.yellow
  vim.g.terminal_color_12 = p.term.blue
  vim.g.terminal_color_13 = p.term.magenta
  vim.g.terminal_color_14 = p.term.cyan
  vim.g.terminal_color_15 = p.term.white

  local groups = {}

  merge(groups, require("makurai.groups.syntax").get(p))
  merge(groups, require("makurai.groups.editor").get(p, opts))

  local lang_modules = {
    "c",
    "css",
    "html",
    "markdown",
    "rust",
    "yaml",
  }

  for _, module_name in ipairs(lang_modules) do
    merge(groups, require("makurai.groups.lang." .. module_name).get(p))
  end

  local plugin_modules = {
    "bqf",
    "blink",
    "cmp",
    "gitsigns",
    "lazy",
    "markview",
    "render-markdown",
    "telescope",
    "toggleterm",
    "whichkey",
  }

  for _, module_name in ipairs(plugin_modules) do
    merge(groups, require("makurai.groups.plugin." .. module_name).get(p))
  end

  return groups
end

return M
