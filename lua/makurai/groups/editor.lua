local M = {}

---@param p Makurai.Palette
---@param opts Makurai.config
function M.get(p, opts)
  return {
    ------------------------------
    --- Normal Highlights
    ------------------------------
    Normal = { bg = opts.transparent and "none" or p.editor.bg, fg = p.editor.fg },
    NormalFloat = { bg = "none" },
    FloatBorder = { fg = p.editor.border, bg = "none" },
    Pmenu = { bg = p.editor.surface },
    PmenuSel = { bg = p.editor.selection },
    PmenuSbar = { bg = p.editor.surface },
    PmenuThumb = { bg = p.editor.border },
    PmenuBorder = { fg = p.editor.border, bg = "none" },

    ------------------------------
    --- Cursor and Line Highlights
    ------------------------------
    CursorLineNr = { fg = p.editor.line_nr_active },
    CursorLine = { bg = p.editor.cursor_line },
    Cursor = { bg = p.editor.cursor, fg = p.editor.fg_inverted },
    LineNr = { fg = p.editor.line_nr },

    ------------------------------
    --- Status and Tabline Highlights
    ------------------------------
    StatusLine = { bg = p.editor.statusline, fg = p.editor.fg },
    StatusLineNC = { bg = p.editor.statusline, fg = p.editor.fg },
    TabLine = { bg = "none", fg = p.syntax.comment },
    TabLineFill = { bg = "none" },
    TabLineSel = { bg = p.editor.surface, fg = p.editor.fg },

    ------------------------------
    --- Selection
    ------------------------------
    Search = { bg = p.editor.match },
    CurSearch = { bg = p.editor.match },
    MatchParen = { bg = p.editor.match, bold = true },
    Visual = { bg = p.editor.selection },

    ------------------------------
    --- Diff and Change Highlights
    ------------------------------
    DiffAdd = { bg = p.git.bg_add },
    DiffChange = { bg = p.git.bg_change },
    DiffDelete = { bg = p.git.bg_delete, fg = p.git.bg_delete },
    DiffText = { bg = p.git.bg_text },

    ------------------------------
    --- Message and Warning Highlights
    ------------------------------
    ErrorMsg = { fg = p.diagnostic.error },
    WarningMsg = { fg = p.diagnostic.warning },
    ModeMsg = { fg = p.diagnostic.ok },
    MsgArea = { link = "Identifier" },
    MsgSeparator = { fg = p.editor.border },
    Question = { fg = p.diagnostic.info },
    QuickFixLine = { bg = p.editor.cursor_line },

    ------------------------------
    --- Window and Separator Highlights
    ------------------------------
    VertSplit = { fg = p.editor.divider },
    WinSeparator = { fg = p.editor.divider },
    SignColumn = { bg = "none" },
    Whitespace = { fg = p.editor.guide },
    NonText = { fg = p.editor.guide },
    Title = { bg = p.term.yellow, fg = p.editor.fg_inverted, bold = true },

    -- Indent Blankline
    IblScope = { fg = p.editor.divider },
    ["@ibl.scope.char.1"] = { fg = p.editor.divider },

    ----------------------
    -- Diagnostic
    ----------------------
    DiagnosticError = { fg = p.diagnostic.error },
    DiagnosticWarn = { fg = p.diagnostic.warning },
    DiagnosticInfo = { fg = p.diagnostic.info },
    DiagnosticHint = { fg = p.diagnostic.hint },
    DiagnosticOk = { fg = p.diagnostic.ok },
    DiagnosticUnderlineError = { sp = p.diagnostic.error },
    DiagnosticUnderlineWarn = { sp = p.diagnostic.warning },
    DiagnosticUnderlineInfo = { sp = p.diagnostic.info },
    DiagnosticUnderlineHint = { sp = p.diagnostic.hint },
    DiagnosticUnderlineOk = { sp = p.diagnostic.ok },
    DiagnosticVirtualTextError = { fg = p.diagnostic.error },
    DiagnosticVirtualTextWarn = { fg = p.diagnostic.warning },
    DiagnosticVirtualTextInfo = { fg = p.diagnostic.info },
    DiagnosticVirtualTextHint = { fg = p.diagnostic.hint },
    DiagnosticVirtualTextOk = { fg = p.diagnostic.ok },
    DiagnosticFloatingError = { fg = p.diagnostic.error },
    DiagnosticFloatingWarn = { fg = p.diagnostic.warning },
    DiagnosticFloatingInfo = { fg = p.diagnostic.info },
    DiagnosticFloatingHint = { fg = p.diagnostic.hint },
    DiagnosticFloatingOk = { fg = p.diagnostic.ok },
    DiagnosticSignError = { fg = p.diagnostic.error },
    DiagnosticSignWarn = { fg = p.diagnostic.warning },
    DiagnosticSignInfo = { fg = p.diagnostic.info },
    DiagnosticSignHint = { fg = p.diagnostic.hint },
    DiagnosticSignOk = { fg = p.diagnostic.ok },

    -----------------------------
    --- Spell
    -----------------------------
    SpellBad = { sp = p.diagnostic.error, undercurl = true },
    SpellCap = { sp = p.diagnostic.warning, undercurl = true },
    SpellLocal = { sp = p.diagnostic.warning, undercurl = true },
    SpellRare = { sp = p.diagnostic.warning, undercurl = true },
  }
end

return M
