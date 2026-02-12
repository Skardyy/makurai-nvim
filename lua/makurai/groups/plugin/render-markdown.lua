local M = {}

---@param p Makurai.Palette
function M.get(p)
  return {
    RenderMarkdownH1Bg = { bg = p.editor.surface },
    RenderMarkdownH2Bg = { link = "RenderMarkdownH1Bg" },
    RenderMarkdownH3Bg = { link = "RenderMarkdownH1Bg" },
    RenderMarkdownH4Bg = { link = "RenderMarkdownH1Bg" },
    RenderMarkdownH5Bg = { link = "RenderMarkdownH1Bg" },
    RenderMarkdownH6Bg = { link = "RenderMarkdownH1Bg" },
    RenderMarkdownCode = { bg = p.editor.surface },
    RenderMarkdownBullet = { link = "Function" },
    RenderMarkdownQuote = { link = "String" },
    RenderMarkdownTableRow = { link = "Identifier" },
  }
end

return M
