local p = require("makurai.palette")

vim.g.colors_name = "makurai"
vim.opt.background = "dark"
vim.cmd("hi clear")
local is_gui_mode = vim.fn.has("gui_running") == 1

-- Define highlight groups
local hi = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

------------------------------
--- Normal Highlights
------------------------------
hi("ColorColumn", { bg = "none", fg = "none" })   -- Columns set with 'colorcolumn'
hi("Conceal", { fg = p.yellow })                  -- Placeholder characters substituted for concealed text (see 'conceallevel')
hi("CurSearch", { bg = p.yellow, fg = p.on_fg })  -- Highlighting a search pattern under the cursor (see 'hlsearch')
hi("CursorColumn", {})                            -- Screen-column at the cursor, when 'cursorcolumn' is set.
hi("CursorLine", { bg = p.surface2 })             -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
hi("Directory", { fg = p.cyan, bold = true })     -- Directory names (and other special names in listings)
hi("DiffAdd", { fg = p.green })                   -- Diff mode: Added line |diff.txt|
hi("DiffChange", { fg = p.fg })                   -- Diff mode: Changed line |diff.txt|
hi("DiffDelete", { fg = p.light_red })            -- Diff mode: Deleted line |diff.txt|
hi("DiffText", { fg = p.fg })                     -- Diff mode: Changed text within a changed line |diff.txt|
hi("EndOfBuffer", { fg = p.line })                -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
hi("TermCursor", { fg = p.on_fg, bg = p.accent }) -- Cursor in a focused terminal
hi("TermCursorNC", { fg = p.on_fg, bg = p.fg })   -- Cursor in an unfocused terminal
hi("ErrorMsg", { fg = p.red })                    -- Error messages on the command line
hi("VertSplit", { fg = p.border, bg = p.border }) -- Column separating vertically split windows
hi("Folded", {})                                  -- Line used for closed folds
hi("FoldColumn", {})                              -- 'foldcolumn'
hi("SignColumn", {})                              -- Column where |signs| are displayed
hi("IncSearch", { fg = p.on_fg, bg = p.yellow })  -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
hi("Substitute", { fg = p.on_fg, bg = p.yellow }) -- |:substitute| replacement text highlighting
hi("LineNr", { fg = p.line })                     -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
hi("LineNrAbove", { fg = p.line })                -- Line number for when the 'relativenumber' option is set, above the cursor line
hi("LineNrBelow", { fg = p.line })                -- Line number for when the 'relativenumber' option is set, below the cursor line
hi("CursorLineNr", { fg = p.comment })            -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
-- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
-- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
hi("MatchParen", { bg = p.selection })               -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
hi("ModeMsg", { fg = p.green })                      -- 'showmode' message (e.g., "-- INSERT -- ")
hi("MsgArea", { fg = p.yellow })                     -- Area for messages and cmdline
hi("MsgSeparator", { fg = p.border, bg = p.border }) -- Separator for scrolled messages, `msgsep` flag of 'display'
-- MoreMsg        {}, -- |more-prompt|
-- NonText        { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
hi("Normal", { bg = is_gui_mode and "#15161b" or 'none' }) -- Normal text
hi("NormalFloat", { bg = "none", fg = p.border })          -- Normal text in floating windows.
hi("FloatBorder", { fg = p.border })                       -- Border of floating windows.
-- FloatTitle     { }, -- Title of floating windows.
hi("NormalNC", {})                                         -- normal text in non-current windows
hi("Pmenu", { fg = p.fg })                                 -- Popup menu: Normal item.
hi("PmenuSel", {})                                         -- Popup menu: Selected item.
hi("PmenuKind", {})                                        -- Popup menu: Normal item "kind"
hi("PmenuKindSel", {})                                     -- Popup menu: Selected item "kind"
hi("PmenuExtra", {})                                       -- Popup menu: Normal item "extra text"
hi("PmenuExtraSel", {})                                    -- Popup menu: Selected item "extra text"
-- PmenuSbar      { }, -- Popup menu: Scrollbar.
-- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
hi("Question", { fg = p.yellow })     -- |hit-enter| prompt and yes/no questions
hi("QuickFixLine", { fg = p.yellow }) -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
hi("Search", { bg = p.selection })    -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
-- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
-- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
-- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
-- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
-- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
hi("StatusLine", { bg = p.surface, fg = p.border })   -- Status line of current window
hi("StatusLineNC", { bg = p.surface, fg = p.border }) -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
hi("TabLine", { bg = p.surface, fg = p.border })      -- Tab pages line, not active tab page label
hi("TabLineFill", {})                                 -- Tab pages line, where there are no labels
hi("TabLineSel", { bg = p.guide, fg = p.fg })         -- Tab pages line, active tab page label
-- Title          { }, -- Titles for output from ":set all", ":autocmd" etc.
hi("Visual", { bg = p.selection })                    -- Visual mode selection
-- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
hi("WarningMsg", { fg = p.yellow })                   -- Warning messages
hi("Whitespace", { fg = p.guide })                    -- "nbsp", "space", "tab" and "trail" in 'listchars'
hi("Winseparator", { fg = p.border })                 -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
-- WildMenu       { }, -- Current match in 'wildmenu' completion
-- WinBar         { }, -- Window bar of current window
-- WinBarNC       { }, -- Window bar of not-current windows

------------------------------
--- Syntax Highlights
------------------------------
hi("Comment", { fg = p.comment })    -- Any comment

hi("Constant", { fg = p.purple })    -- (*) Any constant
hi("String", { fg = p.green })       --   A string constant: "this is a string"
hi("Character", { fg = p.purple })   --   A character constant: 'c', '\n'
hi("Number", { fg = p.purple })      --   A number constant: 234, 0xff
hi("Boolean", { fg = p.purple })     --   A boolean constant: TRUE, false
hi("Float", { fg = p.purple })       --   A floating point constant: 2.3e10

hi("Identifier", { fg = p.fg })      -- (*) Any variable name
hi("Function", { fg = p.yellow })    --   Function name (also: methods for classes)

hi("Statement", { fg = p.orange })   -- (*) Any statement
hi("Conditional", { fg = p.orange }) --   if, then, else, endif, switch, etc.
hi("Repeat", { fg = p.orange })      --   for, do, while, etc.
hi("Label", { fg = p.orange })       --   case, default, etc.
hi("Operator", { fg = p.fg })        --   "sizeof", "+", "*", etc.
hi("Keyword", { fg = p.orange })     --   any other keyword
hi("Exception", { fg = p.orange })   --   try, catch, throw

hi("PreProc", { fg = p.yellow })     -- (*) Generic Preprocessor
hi("Include", { fg = p.orange })     --   Preprocessor #include
hi("Define", { fg = p.orange })      --   Preprocessor #define
hi("Macro", { fg = p.orange })       --   Same as Define
hi("PreCondit", { fg = p.orange })   --   Preprocessor #if, #else, #endif, etc.

hi("Type", { fg = p.blue })          -- (*) int, long, char, etc.
hi("StorageClass", { fg = p.blue })  --   static, register, volatile, etc.
hi("Structure", { fg = p.blue })     --   struct, union, enum, etc.
hi("Typedef", { fg = p.blue })       --   A typedef

hi("Special", { fg = p.blue })       -- (*) Any special symbol
-- SpecialChar    { }, --   Special character in a constant
-- Tag            { }, --   You can use CTRL-] on this
-- Delimiter      { }, --   Character that needs attention
-- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
-- Debug          { }, --   Debugging statements

hi("Underlined", { fg = p.cyan, underline = true }) -- Text that stands out, HTML links
-- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
hi("Error", { bg = p.light_red, fg = p.on_fg })     -- Any erroneous construct
hi("Todo", { bg = p.yellow, fg = p.on_fg })         -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

------------------------------
--- LSP Highlights
------------------------------
hi("LspReferenceText", { fg = p.fg })    -- Used for highlighting "text" references
hi("@lsp.type.namespace", { fg = p.fg }) -- Tag properties
-- LspReferenceRead            { } , -- Used for highlighting "read" references
-- LspReferenceWrite           { } , -- Used for highlighting "write" references
-- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
-- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
-- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

----------------------
-- Diagnostic
----------------------
-- hi("DiagnosticError", { fg = p.light_red, bold = true }) -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
-- hi("DiagnosticWarn", { fg = p.yellow, bold = true }) -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
-- hi("DiagnosticInfo", { fg = p.light_cyan, bold = true }) -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
-- hi("DiagnosticHint", { fg = p.light_blue, bold = true }) -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
-- hi("DiagnosticOk", { fg = p.green, bold = true }) -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
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
-- Markdown syntax groups.
-----------------------------------
hi("@markup.heading", { fg = p.orange })               -- heading
hi("@markup.link", { fg = p.blue })                    -- brackets on a link
hi("@markup.link.label", { fg = p.blue })              -- label on the link
hi("@markup.link.url", { fg = p.cyan })                -- url on a link
hi("@markup.quote.markdown", { fg = p.green })         -- quote
hi("@markup.raw", { fg = p.green })                    -- strings
hi("@punctuation.special.markdown", { fg = p.yellow }) -- >
hi("@markup.list.markdown", { fg = p.yellow })         -- *

-----------------------------------
-- Tree-Sitter syntax groups.
-----------------------------------
hi("@text.literal", { fg = p.comment }) -- Comment
hi("@text.reference", { fg = p.fg })    -- Identifier
-- sym"@text.title"        { }, -- Title
-- sym"@text.uri"          { }, -- Underlined
-- sym"@text.underline"    { }, -- Underlined
-- sym"@text.todo"         { }, -- Todo
hi("@comment", { fg = p.comment })                -- Comment
hi("@punctuation", { fg = p.fg })                 -- Delimiter
hi("@constant", { fg = p.purple })                -- Constant
hi("@constant.builtin", { fg = p.purple })        -- Special
hi("@constant.macro", { fg = p.orange })          -- Define
hi("@define", { fg = p.orange })                  -- Define
hi("@macro", { fg = p.orange })                   -- Macro
hi("@string", { fg = p.green })                   -- String
hi("@string.escape", { fg = p.purple })           -- SpecialChar
hi("@string.special", { fg = p.purple })          -- SpecialChar
hi("@character", { fg = p.green })                -- Character
-- sym"@character.special" { fg = p.blue }, -- SpecialChar
hi("@number", { fg = p.purple })                  -- Number
hi("@boolean", { fg = p.purple })                 -- Boolean
hi("@float", { fg = p.purple })                   -- Float
hi("@function", { fg = p.yellow })                -- Function
hi("@function.builtin", { fg = p.yellow })        -- Special
hi("@function.macro", { fg = p.yellow })          -- Macro
hi("@parameter", { fg = p.fg })                   -- Identifier
hi("@method", { fg = p.yellow })                  -- Function
hi("@field", { fg = p.fg })                       -- Identifier
hi("@property", { fg = p.fg })                    -- Identifier
hi("@constructor", { fg = p.blue })               -- Special
hi("@conditional", { fg = p.orange })             -- Conditional
hi("@repeat", { fg = p.orange })                  -- Repeat
hi("@label", { fg = p.orange })                   -- Label
hi("@operator", { fg = p.fg })                    -- Operator
hi("@keyword", { fg = p.orange })                 -- Keyword
hi("@keyword.conditional.ternary", { fg = p.fg }) -- Keyword
hi("@exception", { fg = p.orange })               -- Exception
hi("@variable", { fg = p.fg })                    -- Identifier
hi("@type", { fg = p.blue })                      -- Type
hi("@type.definition", { fg = p.blue })           -- Typedef
hi("@storageclass", { fg = p.blue })              -- StorageClass
hi("@structure", { fg = p.blue })                 -- Structure
hi("@namespace", { fg = p.fg })                   -- Identifier
hi("@include", { fg = p.fg })                     -- Include
hi("@preproc", { fg = p.fg })                     -- PreProc
hi("@debug", { fg = p.fg })                       -- Debug
hi("@tag", { fg = p.blue })                       -- Tag
hi("@tag.attribute", { fg = p.yellow })           -- Tag properties
hi("@tag.delimiter", { fg = p.comment })          -- Tag properties

-----------------------------
--- Git Signs
-----------------------------
hi("GitSignsAdd", { fg = p.green })
hi("GitSignsChange", { fg = p.yellow })
hi("GitSignsDelete", { fg = p.light_red })

-----------------------------
--- Telescope
-----------------------------
hi("TelescopeBorder", { fg = p.border })

-----------------------------
--- WhichKey
-----------------------------
hi("WhichKeyNormal", { bg = p.surface2 })
hi("WhichKeyValue", { fg = p.fg })
hi("WhichKeySeparator", { fg = p.fg })

-----------------------------
--- ToggleTerm
-----------------------------
hi("ToggleTerm", { bg = p.surface2 })
hi("ToggleTermBorder", { fg = p.border })

-----------------------------
--- Lazy
-----------------------------
hi("LazyNormal", { fg = p.fg, bg = p.surface2 })
hi("LazyButton", { fg = p.fg })
hi("LazyButtonActive", { fg = p.fg, bg = p.selection, bold = true })
hi("LazyH1", { fg = p.keyword, bold = true })
hi("LazyH2", { fg = p.yellow, bold = true })
hi("LazySpecial", { fg = p.special })
hi("LazyProgressTodo", { fg = p.border })
hi("LazyProgressDone", { fg = p.string })
hi("LazyProp", { fg = p.constant })
hi("LazyValue", { fg = p.string })
hi("LazyReasonPlugin", { fg = p.yellow })
hi("LazyReasonRuntime", { fg = p.keyword })
hi("LazyReasonEvent", { fg = p.regexp })
hi("LazyCommit", { fg = p.constant })
hi("LazyComment", { fg = p.border })

-----------------------------
--- render-markdown.nvim
-----------------------------
hi("RenderMarkdownH1Bg", { bg = p.light_orange })
hi("RenderMarkdownH2Bg", { bg = p.light_orange })
hi("RenderMarkdownH3Bg", { bg = p.light_orange })
hi("RenderMarkdownH4Bg", { bg = p.light_orange })
hi("RenderMarkdownH5Bg", { bg = p.light_orange })
hi("RenderMarkdownH6Bg", { bg = p.light_orange })

hi("RenderMarkdownCode", { bg = p.surface2 })

return {}
