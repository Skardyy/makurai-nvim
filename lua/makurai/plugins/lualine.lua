local p = require("makurai.palette")

return {
  normal = {
    a = { fg = p.on_fg, bg = p.blue },
    b = { fg = p.fg, bg = p.bg_2 },
    c = { fg = p.fg, bg = p.bg },
  },
  insert = { a = { fg = p.bg, bg = p.green } },
  visual = { a = { fg = p.bg, bg = p.yellow } },
  replace = { a = { fg = p.bg, bg = p.light_red } },
  inactive = {
    a = { fg = p.fg, bg = p.bg },
    b = { fg = p.fg, bg = p.bg },
    c = { fg = p.fg, bg = p.bg },
  },
}
