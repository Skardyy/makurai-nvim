local M = {}

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

  return {
    ------------------------------
    --- Main Syntax Highlights
    ------------------------------
    Comment = { fg = p.syntax.comment },
    Constant = { fg = p.syntax.const },
    String = { fg = p.syntax.str },
    Identifier = { fg = p.editor.fg },
    Function = { fg = p.syntax.fn },
    Keyword = { fg = p.syntax.keyword },
    Type = { fg = p.syntax.type },

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

    ------------------------------
    --- Syntax Highlights
    ------------------------------
    Character = { link = "Constant" },
    Number = { link = "Constant" },
    Boolean = { link = "Constant" },
    Float = { link = "Constant" },

    Operator = { link = "Identifier" },

    PreProc = { link = "Function" },

    Statement = { link = "Keyword" },
    Conditional = { link = "Keyword" },
    Repeat = { link = "Keyword" },
    Label = { link = "Keyword" },
    Exception = { link = "Keyword" },
    Include = { link = "Keyword" },
    Define = { link = "Keyword" },
    Macro = { link = "Keyword" },
    PreCondit = { link = "Keyword" },

    StorageClass = { link = "Type" },
    Structure = { link = "Type" },
    Typedef = { link = "Type" },
    Special = { link = "Type" },

    ------------------------------
    --- Formatted specials
    ------------------------------
    Underlined = { fg = p.syntax.type, underline = true },
    Ignore = { fg = p.syntax.comment },
    Error = { fg = p.diagnostic.error, bold = true },
    Todo = { fg = p.syntax.keyword, bold = true },
    Directory = { fg = p.term.cyan },

    ------------------------------
    --- LSP Highlights
    ------------------------------
    LspReferenceText = { link = "Identifier" },

    ["@lsp.type.namespace"] = { link = "Identifier" },
    ["@lsp.typemod.variable.callable"] = { link = "Function" },
    ["@lsp.mod.callable"] = { link = "Function" },

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

    -----------------------------------
    -- HTML syntax groups.
    -----------------------------------
    htmlTag = { link = "Identifier" },

    -----------------------------------
    -- CSS syntax groups.
    -----------------------------------
    cssBraces = { link = "Identifier" },

    -----------------------------------
    -- Markdown syntax groups.
    -----------------------------------
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

    -----------------------------------
    -- Tree-Sitter syntax groups.
    -----------------------------------
    ["@text.literal"] = { link = "Link" },
    ["@text.reference"] = { link = "Identifier" },
    ["@comment"] = { link = "Comment" },
    ["@punctuation"] = { link = "Identifier" },
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "Constant" },
    ["@constant.macro"] = { link = "Keyword" },
    ["@define"] = { link = "Keyword" },
    ["@macro"] = { link = "Keyword" },
    ["@string"] = { link = "String" },
    ["@string.escape"] = { link = "Constant" },
    ["@string.special"] = { link = "Constant" },
    ["@character"] = { link = "String" },
    ["@number"] = { link = "Constant" },
    ["@boolean"] = { link = "Constant" },
    ["@float"] = { link = "Constant" },
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { link = "Function" },
    ["@function.macro"] = { link = "Function" },
    ["@parameter"] = { link = "Identifier" },
    ["@method"] = { link = "Function" },
    ["@field"] = { link = "Identifier" },
    ["@property"] = { link = "Identifier" },
    ["@constructor"] = { link = "Type" },
    ["@conditional"] = { link = "Keyword" },
    ["@repeat"] = { link = "Keyword" },
    ["@label"] = { link = "Keyword" },
    ["@operator"] = { link = "Identifier" },
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.conditional.ternary"] = { link = "Identifier" },
    ["@exception"] = { link = "Keyword" },
    ["@variable"] = { link = "Identifier" },
    ["@type"] = { link = "Type" },
    ["@type.definition"] = { link = "Type" },
    ["@storageclass"] = { link = "Type" },
    ["@structure"] = { link = "Type" },
    ["@module"] = { link = "Type" },
    ["@namespace"] = { link = "Identifier" },
    ["@include"] = { link = "Keyword" },
    ["@preproc"] = { link = "Keyword" },
    ["@debug"] = { link = "Keyword" },
    ["@tag"] = { link = "Type" },
    ["@tag.attribute"] = { link = "Function" },
    ["@tag.delimiter"] = { link = "Comment" },

    -----------------------------
    --- Git Signs
    -----------------------------
    GitSignsAdd = { fg = p.git.add },
    GitSignsChange = { fg = p.git.change },
    GitSignsDelete = { fg = p.git.delete },
    GitSignsAddNr = { fg = p.git.add },
    GitSignsChangeNr = { fg = p.git.change },
    GitSignsDeleteNr = { fg = p.git.delete },
    GitSignsAddLn = { bg = p.git.bg_add },
    GitSignsChangeLn = { bg = p.git.bg_change },
    GitSignsDeleteLn = { bg = p.git.bg_delete },
    GitSignsCurrentLineBlame = { fg = p.syntax.comment },

    -----------------------------
    --- Telescope
    -----------------------------
    TelescopeBorder = { fg = p.editor.border },
    TelescopePromptTitle = { bg = p.syntax.keyword, bold = true, fg = p.editor.fg_inverted },
    TelescopePreviewTitle = { bg = p.term.yellow, bold = true, fg = p.editor.fg_inverted },
    TelescopeResultsTitle = { bg = p.term.green, bold = true, fg = p.editor.fg_inverted },

    -----------------------------
    --- WhichKey
    -----------------------------
    WhichKeyNormal = { bg = p.editor.surface },
    WhichKeyValue = { link = "Identifier" },
    WhichKeySeparator = { link = "Comment" },

    -----------------------------
    --- ToggleTerm
    -----------------------------
    ToggleTerm = { link = "Normal" },
    ToggleTermBorder = { link = "FloatBorder" },

    -----------------------------
    --- Lazy
    -----------------------------
    LazyNormal = { bg = p.editor.surface },
    LazyButton = { fg = p.syntax.comment },
    LazyButtonActive = { fg = p.editor.fg, bg = p.editor.selection, bold = true },
    LazyH1 = { fg = p.syntax.keyword, bold = true },
    LazyH2 = { fg = p.syntax.fn, bold = true },
    LazySpecial = { link = "Type" },
    LazyProgressTodo = { fg = p.editor.border },
    LazyProgressDone = { fg = p.diagnostic.ok },
    LazyProp = { link = "Constant" },
    LazyValue = { link = "String" },
    LazyReasonPlugin = { fg = p.syntax.fn },
    LazyReasonRuntime = { link = "Keyword" },
    LazyReasonEvent = { fg = p.diagnostic.info },
    LazyCommit = { link = "Constant" },
    LazyComment = { fg = p.syntax.comment },

    -----------------------------
    --- render-markdown.nvim
    -----------------------------
    RenderMarkdownH1Bg = { bg = p.editor.surface },
    RenderMarkdownH2Bg = { link = "RenderMarkdownH1Bg" },
    RenderMarkdownH3Bg = { link = "RenderMarkdownH1Bg" },
    RenderMarkdownH4Bg = { link = "RenderMarkdownH1Bg" },
    RenderMarkdownH5Bg = { link = "RenderMarkdownH1Bg" },
    RenderMarkdownH6Bg = { link = "RenderMarkdownH1Bg" },
    RenderMarkdownCode = { bg = p.editor.surface },
    RenderMarkdownBullet = { link = "Function" },
    RenderMarkdownQuote = { link = "Function" },
    RenderMarkdownTableRow = { link = "Identifier" },

    -----------------------------
    --- YAML
    -----------------------------
    ["@property.yaml"] = { link = "Keyword" },

    -----------------------------
    --- Blink
    -----------------------------
    BlinkCmpKindText = { link = "String" },
    BlinkCmpKindMethod = { link = "Function" },
    BlinkCmpKindFunction = { link = "Function" },
    BlinkCmpKindConstructor = { link = "Type" },
    BlinkCmpKindField = { link = "Constant" },
    BlinkCmpKindVariable = { link = "Constant" },
    BlinkCmpKindClass = { link = "Type" },
    BlinkCmpKindInterface = { link = "Type" },
    BlinkCmpKindModule = { link = "Type" },
    BlinkCmpKindProperty = { link = "Constant" },
    BlinkCmpKindUnit = { link = "Constant" },
    BlinkCmpKindValue = { link = "Constant" },
    BlinkCmpKindEnum = { link = "Type" },
    BlinkCmpKindKeyword = { link = "Keyword" },
    BlinkCmpKindSnippet = { fg = p.diagnostic.hint },
    BlinkCmpKindColor = { fg = p.diagnostic.info },
    BlinkCmpKindFile = { fg = p.syntax.const },
    BlinkCmpKindReference = { fg = p.diagnostic.info },
    BlinkCmpKindFolder = { fg = p.diagnostic.info },
    BlinkCmpKindEnumMember = { link = "Constant" },
    BlinkCmpKindConstant = { link = "Constant" },
    BlinkCmpKindStruct = { link = "Type" },
    BlinkCmpKindEvent = { link = "Keyword" },
    BlinkCmpKindOperator = { link = "Keyword" },
    BlinkCmpKindTypeParameter = { link = "Identifier" },
    BlinkCmpItemAbbrMatch = { fg = p.syntax.type, bold = true },
    BlinkCmpItemAbbrMatchFuzzy = { fg = p.syntax.type },
    BlinkCmpItemAbbrDeprecated = { fg = p.syntax.comment, strikethrough = true },
    BlinkCmpMenu = { fg = p.syntax.comment },

    -----------------------------
    --- Cmp
    -----------------------------
    CmpItemKindText = { link = "String" },
    CmpItemKindMethod = { link = "Function" },
    CmpItemKindFunction = { link = "Function" },
    CmpItemKindConstructor = { link = "Type" },
    CmpItemKindField = { link = "Constant" },
    CmpItemKindVariable = { link = "Constant" },
    CmpItemKindClass = { link = "Type" },
    CmpItemKindInterface = { link = "Type" },
    CmpItemKindModule = { link = "Type" },
    CmpItemKindProperty = { link = "Constant" },
    CmpItemKindUnit = { link = "Constant" },
    CmpItemKindValue = { link = "Constant" },
    CmpItemKindEnum = { link = "Type" },
    CmpItemKindKeyword = { link = "Keyword" },
    CmpItemKindSnippet = { fg = p.diagnostic.hint },
    CmpItemKindColor = { fg = p.diagnostic.info },
    CmpItemKindFile = { fg = p.syntax.const },
    CmpItemKindReference = { fg = p.diagnostic.info },
    CmpItemKindFolder = { fg = p.diagnostic.info },
    CmpItemKindEnumMember = { link = "Constant" },
    CmpItemKindConstant = { link = "Constant" },
    CmpItemKindStruct = { link = "Type" },
    CmpItemKindEvent = { link = "Keyword" },
    CmpItemKindOperator = { link = "Keyword" },
    CmpItemKindTypeParameter = { link = "Identifier" },
    CmpItemAbbrMatch = { fg = p.syntax.type, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = p.syntax.type },
    CmpItemAbbrDeprecated = { fg = p.syntax.comment, strikethrough = true },
    CmpItemMenu = { fg = p.syntax.comment },

    -----------------------------
    --- nvim-bqf
    -----------------------------
    BqfPreviewFloat = { bg = p.editor.bg, blend = 0 },
    BqfPreviewBorder = { fg = p.editor.border, bg = p.editor.bg, blend = 0 },
    BqfPreviewCursorLine = { link = "CursorLine" },
    BqfPreviewCursor = { fg = p.editor.fg_inverted, bg = p.term.yellow },

    -----------------------------
    --- Spell
    -----------------------------
    SpellBad = { sp = p.diagnostic.error, undercurl = true },
    SpellCap = { sp = p.diagnostic.warning, undercurl = true },
    SpellLocal = { sp = p.diagnostic.warning, undercurl = true },
    SpellRare = { sp = p.diagnostic.warning, undercurl = true },

    -----------------------------
    --- C
    -----------------------------
    cCharacter = { link = "String" },

    -----------------------------
    --- Rust
    -----------------------------
    ["@lsp.typemod.keyword.unsafe.rust"] = { fg = p.diagnostic.error },
  }
end

return M
