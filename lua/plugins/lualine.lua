local p = require("makurai.palette")

return {
  normal = {
    a = { fg = p.bg, bg = p.blue },
    b = { fg = p.fg, bg = p.comment },
    c = { fg = p.fg, bg = p.bg },
  },
  insert = { a = { fg = p.bg, bg = p.green } },
  visual = { a = { fg = p.bg, bg = p.purple } },
  replace = { a = { fg = p.bg, bg = p.red } },
  inactive = {
    a = { fg = p.fg, bg = p.bg },
    b = { fg = p.fg, bg = p.bg },
    c = { fg = p.fg, bg = p.bg },
  },
}
