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

  if opts.highlight_only_method_def then
    -- treesitter: call sites
    groups["@function.call"] = { link = "Identifier" }
    groups["@function.method.call"] = { link = "Identifier" }
    groups["@method.call"] = { link = "Identifier" }
    -- LSP semantic tokens: base = call, declaration modifier = def
    groups["@lsp.type.function"] = { link = "Identifier" }
    groups["@lsp.type.method"] = { link = "Identifier" }
    groups["@lsp.typemod.function.declaration"] = { link = "Function" }
    groups["@lsp.typemod.method.declaration"] = { link = "Function" }
    groups["@lsp.typemod.function.definition"] = { link = "Function" }
    groups["@lsp.typemod.method.definition"] = { link = "Function" }
  end

  local lang_modules = {
    "c",
    "css",
    "html",
    "markdown",
    "rust",
    "yaml",
    "ts"
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
    "snacks",
    "oil-git-status",
    "aerial",
  }

  for _, module_name in ipairs(plugin_modules) do
    merge(groups, require("makurai.groups.plugin." .. module_name).get(p))
  end

  return groups
end

return M
