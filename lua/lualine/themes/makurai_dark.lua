local p = require "makurai.palettes.dark".get()

return {
  normal = {
    a = { fg = p.on_fg, bg = p.normal },
    b = { fg = p.fg, bg = p.surface_alt },
    c = { fg = p.fg, bg = p.surface },
    y = { fg = p.fg, bg = p.surface_alt },
  },
  insert = { a = { fg = p.surface, bg = p.insert } },
  visual = { a = { fg = p.surface, bg = p.visual } },
  replace = { a = { fg = p.surface, bg = p.error } },
  command = { a = { fg = p.surface, bg = p.command } },
  inactive = {
    a = { fg = p.fg, bg = p.surface },
    b = { fg = p.fg, bg = p.surface },
    c = { fg = p.fg, bg = p.surface },
  },
}
