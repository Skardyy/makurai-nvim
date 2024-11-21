local p = require("makurai.palette")

return {
  normal = {
    a = { fg = p.on_fg, bg = p.blue },
    b = { fg = p.fg, bg = p.surface },
    c = { fg = p.fg, bg = p.surface },
  },
  insert = { a = { fg = p.surface, bg = p.green } },
  visual = { a = { fg = p.surface, bg = p.yellow } },
  replace = { a = { fg = p.surface, bg = p.light_red } },
  inactive = {
    a = { fg = p.fg, bg = p.surface },
    b = { fg = p.fg, bg = p.surface },
    c = { fg = p.fg, bg = p.surface },
  },
}
