local M = {}

---@param p Makurai.Palette
function M.load(p)
  local opts = require "makurai.config".get()
  return {
    ------------------------------
    --- Main Syntax Highlights
    ------------------------------
    Comment = { fg = p.comment },
    Constant = { fg = p.purple },
    String = { fg = p.green },
    Identifier = { fg = p.fg },
    Function = { fg = p.yellow },
    Keyword = { fg = p.orange },
    Type = { fg = p.blue },

    ------------------------------
    --- Normal Highlights
    ------------------------------
    Normal = { bg = opts.transparent and "none" or p.bg, fg = p.fg },
    NormalFloat = { bg = opts.bordered and "none" or p.bg_alt },
    FloatBorder = { fg = p.border, bg = opts.bordered and "none" or p.bg_alt },
    Pmenu = { bg = opts.bordered and "none" or p.surface_alt },
    PmenuSel = { bg = p.selection },
    PmenuBorder = { fg = p.border, bg = opts.bordered and "none" or p.surface_alt },

    ------------------------------
    --- Cursor and Line Highlights
    ------------------------------
    CursorLineNr = { fg = opts.increase_contrast and p.orange or p.line },
    CursorLine = { bg = p.cursor },
    LineNr = { fg = opts.increase_contrast and p.line or p.LineNr },

    ------------------------------
    --- Status and Tabline Highlights
    ------------------------------
    StatusLine = { bg = p.surface, fg = p.fg },
    StatusLineNC = { bg = p.surface, fg = p.comment },
    TabLine = { bg = p.surface, fg = p.comment },
    TabLineFill = {},
    TabLineSel = { bg = p.bg_alt, fg = p.fg },

    ------------------------------
    --- Seleciton
    ------------------------------
    Search = { bg = p.selection },
    CurSearch = { bg = p.selection },
    MatchParen = { bg = p.selection },
    Visual = { bg = p.selection },

    ------------------------------
    --- Diff and Change Highlights
    ------------------------------
    DiffAdd = { bg = p.dark_green },
    DiffChange = { bg = p.dark_yellow },
    DiffDelete = { bg = p.dark_red },
    DiffText = { link = "Identifier" },

    ------------------------------
    --- Message and Warning Highlights
    ------------------------------
    ErrorMsg = { fg = p.error },
    ModeMsg = { fg = p.insert },
    MsgArea = { link = "Function" },
    MsgSeparator = { fg = p.border },
    Question = { link = "Function" },
    QuickFixLine = { link = "Function" },
    WarningMsg = { fg = p.warning },

    ------------------------------
    --- Window and Separator Highlights
    ------------------------------
    VertSplit = { fg = p.border, bg = p.border },
    SignColumn = {},
    Winseparator = { fg = p.border },
    Whitespace = { fg = p.guide },
    NonText = { fg = p.guide },
    IblScope = { fg = p.guide },
    ["@ibl.scope.char.1"] = { fg = p.guide },

    ------------------------------
    --- Syntax Highlights
    ------------------------------
    Character = { link = "Constant" },
    Number = { link = "Constant" },
    Boolean = { link = "Constant" },
    Float = { link = "Constant" },

    Statement = { link = "Keyword" },
    Conditional = { link = "Keyword" },
    Repeat = { link = "Keyword" },
    Label = { link = "Keyword" },
    Operator = { link = "Identifier" },
    Exception = { link = "Keyword" },

    PreProc = { link = "Function" },
    Include = { link = "Keyword" },
    Define = { link = "Keyword" },
    Macro = { link = "Keyword" },
    PreCondit = { link = "Keyword" },

    StorageClass = { link = "Type" },
    Structure = { link = "Type" },
    Typedef = { link = "Type" },

    Special = { link = "Type" },
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    ------------------------------
    --- Formatted specials
    ------------------------------
    Underlined = { fg = p.cyan, underline = true },
    Ignore = { bg = p.orange, fg = p.on_fg },
    Error = { bg = p.error, fg = p.on_fg },
    Todo = { bg = p.yellow, fg = p.on_fg },
    Directory = { fg = p.dir },

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
    DiagnosticError = { fg = p.error },
    DiagnosticWarn = { fg = p.warning },
    DiagnosticInfo = { fg = p.cyan },
    DiagnosticHint = { fg = p.cyan },
    DiagnosticOk = { fg = p.insert },
    -- DiagnosticUnderLineError = { sp = p.error, undercurl = true },
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    -----------------------------------
    -- HTML syntax groups.
    -----------------------------------
    cssBraces = { link = "Identifier" },
    htmlTag = { link = "Identifier" },
    htmlHead = { link = "Identifier" },

    -----------------------------------
    -- Markdown syntax groups.
    -----------------------------------
    ["@markup.heading"] = { link = "Keyword" },
    ["@markup.link"] = { link = "Type" },
    ["@markup.link.label"] = { link = "Type" },
    ["@markup.link.url"] = { fg = p.cyan },
    ["@markup.quote.markdown"] = { link = "Function" },
    ["@markup.raw"] = { link = "String" },
    ["@punctuation.special.markdown"] = { fg = p.border },
    ["@markup.list.markdown"] = { link = "Function" },

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
    ["@include"] = { link = "Identifier" },
    ["@preproc"] = { link = "Identifier" },
    ["@debug"] = { link = "Identifier" },
    ["@tag"] = { link = "Type" },
    ["@tag.attribute"] = { link = "Function" },
    ["@tag.delimiter"] = { link = "Comment" },

    -----------------------------
    --- Git Signs
    -----------------------------
    GitSignsAdd = { fg = p.insert },
    GitSignsChange = { fg = p.visual },
    GitSignsDelete = { fg = p.error },

    -----------------------------
    --- Telescope
    -----------------------------
    TelescopeBorder = { fg = p.border },

    -----------------------------
    --- WhichKey
    -----------------------------
    WhichKeyNormal = { bg = p.surface_alt },
    WhichKeyValue = { link = "Identifier" },
    WhichKeySeparator = { link = "Identifier" },

    -----------------------------
    --- ToggleTerm
    -----------------------------
    ToggleTerm = { link = "Pmenu" },
    ToggleTermBorder = { link = "PmenuBorder" },

    -----------------------------
    --- Lazy
    -----------------------------
    LazyNormal = { bg = p.surface_alt },
    LazyButton = { link = "Identifier" },
    LazyButtonActive = { fg = p.fg, bg = p.selection, bold = true },
    LazyH1 = { fg = p.orange, bold = true },
    LazyH2 = { fg = p.yellow, bold = true },
    LazySpecial = { link = "Type" },
    LazyProgressTodo = { fg = p.border },
    LazyProgressDone = { link = "String" },
    LazyProp = { link = "Constant" },
    LazyValue = { link = "String" },
    LazyReasonPlugin = { fg = p.yellow },
    LazyReasonRuntime = { link = "Keyword" },
    LazyReasonEvent = { fg = p.cyan },
    LazyCommit = { link = "Constant" },
    LazyComment = { fg = p.border },

    -----------------------------
    --- render-markdown.nvim
    -----------------------------
    RenderMarkdownH1Bg = { bg = p.light_orange },
    RenderMarkdownH2Bg = { link = "RenderMarkdownH1Bg" },
    RenderMarkdownH3Bg = { link = "RenderMarkdownH1Bg" },
    RenderMarkdownH4Bg = { link = "RenderMarkdownH1Bg" },
    RenderMarkdownH5Bg = { link = "RenderMarkdownH1Bg" },
    RenderMarkdownH6Bg = { link = "RenderMarkdownH1Bg" },
    RenderMarkdownCode = { bg = p.surface_alt },
    RenderMarkdownBullet = { link = "Function" },
    RenderMarkdownQuote = { link = "Function" },
    RenderMarkdownTableRow = { link = "Function" },


    -----------------------------
    --- yaml
    -----------------------------
    ["@property.yaml"] = { link = "Keyword" },

    -----------------------------
    --- blink
    -----------------------------
    BlinkCmpLabel = { link = "Identifier" },
    BlinkCmpLabelDeprecated = { link = "Identifier" },
    BlinkCmpLabelMatch = { fg = p.cyan },
    BlinkCmpKind = { link = "Identifier" },
    BlinkCmpKindFunction = { link = "Function" },
    BlinkCmpKindConstructor = { link = "Type" },
    BlinkCmpKindVariable = { link = "Constant" },
    BlinkCmpKindClass = { link = "Type" },
    BlinkCmpKindInterface = { link = "Type" },
    BlinkCmpKindModule = { link = "Type" },
    BlinkCmpKindProperty = { link = "Constant" },
    BlinkCmpKindOperator = { link = "Keyword" },
    BlinkCmpKindReference = { fg = p.cyan },
    BlinkCmpKindUnit = { link = "Constant" },
    BlinkCmpKindValue = { link = "Constant" },
    BlinkCmpKindField = { link = "Constant" },
    BlinkCmpKindEnum = { link = "Type" },
    BlinkCmpKindKeyword = { link = "Keyword" },
    BlinkCmpKindSnippet = { fg = p.cyan },
    BlinkCmpKindColor = { fg = p.cyan },
    BlinkCmpKindFile = { fg = p.purple },
    BlinkCmpKindFolder = { fg = p.cyan },
    BlinkCmpKindEvent = { link = "Keyword" },
    BlinkCmpKindEnumMember = { link = "Constant" },
    BlinkCmpKindConstant = { link = "Constant" },
    BlinkCmpKindStruct = { link = "Type" },
    BlinkCmpKindTypeParameter = { link = "Identifier" },
    BlinkCmpDocBorder = { link = "FloatBorder" },
    BlinkCmpMenuBorder = { link = "PmenuBorder" },

    -----------------------------
    --- cmp
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
    CmpItemKindSnippet = { fg = p.cyan },
    CmpItemKindColor = { fg = p.cyan },
    CmpItemKindFile = { fg = p.purple },
    CmpItemKindReference = { fg = p.cyan },
    CmpItemKindFolder = { fg = p.cyan },
    CmpItemKindEnumMember = { link = "Constant" },
    CmpItemKindConstant = { link = "Constant" },
    CmpItemKindStruct = { link = "Type" },
    CmpItemKindEvent = { link = "Keyword" },
    CmpItemKindOperator = { link = "Keyword" },
    CmpItemKindTypeParameter = { link = "Identifier" },
    CmpItemAbbrMatch = { fg = p.match },

    -----------------------------
    --- Spell
    -----------------------------
    SpellBad = { sp = p.error, undercurl = true },
    SpellCap = { sp = p.visual, undercurl = true },
    SpellLocal = { sp = p.blue, undercurl = true },
    SpellRare = { sp = p.blue, undercurl = true },
  }
end

return M
