local p = require "makurai.palettes.rogue".get()

return {
  normal = {
    a = { fg = p.on_fg, bg = p.normal },
    b = { fg = p.fg, bg = p.lualine_island },
    c = { fg = p.fg, bg = p.cursor },
    x = { fg = p.fg, bg = p.lualine_island },
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
