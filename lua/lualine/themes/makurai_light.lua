local p = require "makurai.palettes.light".get()

return {
  normal = {
    a = { fg = p.editor.fg_inverted, bg = p.term.blue },
    b = { fg = p.editor.fg, bg = p.editor.statusline },
    c = { fg = p.editor.fg, bg = p.editor.statusline },
    y = { fg = p.editor.fg, bg = p.editor.statusline },
  },
  insert = { a = { fg = p.editor.fg_inverted, bg = p.term.green } },
  visual = { a = { fg = p.editor.fg_inverted, bg = p.term.yellow } },
  replace = { a = { fg = p.editor.fg_inverted, bg = p.term.red } },
  command = { a = { fg = p.editor.fg_inverted, bg = p.term.magenta } },
  inactive = {
    a = { fg = p.editor.fg, bg = p.editor.statusline },
    b = { fg = p.editor.fg, bg = p.editor.statusline },
    c = { fg = p.editor.fg, bg = p.editor.statusline },
  },
}
