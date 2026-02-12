local M = {}

---@param p Makurai.Palette
function M.get(p)
  return {
    ["@markup.heading"] = { link = "Keyword" },
    ["@markup.link"] = { link = "Type" },
    ["@markup.link.label"] = { link = "Type" },
    ["@markup.link.url"] = { fg = p.syntax.type, underline = true },
    ["@markup.quote"] = { link = "Comment" },
    ["@markup.raw"] = { link = "String" },
    ["@markup.list"] = { link = "Function" },
    ["@markup.list.checked"] = { fg = p.diagnostic.ok },
    ["@markup.list.unchecked"] = { fg = p.diagnostic.error },
    ["@punctuation.special.markdown"] = { fg = p.syntax.comment },
    markdownRule = { fg = p.editor.guide },
  }
end

return M
