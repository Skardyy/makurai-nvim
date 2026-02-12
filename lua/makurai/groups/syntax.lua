local M = {}

---@param p Makurai.Palette
function M.get(p)
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
  }
end

return M
