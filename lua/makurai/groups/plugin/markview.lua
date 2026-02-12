local M = {}

local function lerp(a, b, t)
  return a + (b - a) * t
end

local function hex_to_rgb(hex)
  local h = hex:gsub("#", "")
  return tonumber(h:sub(1, 2), 16), tonumber(h:sub(3, 4), 16), tonumber(h:sub(5, 6), 16)
end

local function rgb_to_hex(r, g, b)
  return string.format("#%02x%02x%02x", r, g, b)
end

local function mix_hex(a, b, t)
  local ar, ag, ab = hex_to_rgb(a)
  local br, bg, bb = hex_to_rgb(b)
  return rgb_to_hex(
    math.floor(lerp(ar, br, t) + 0.5),
    math.floor(lerp(ag, bg, t) + 0.5),
    math.floor(lerp(ab, bb, t) + 0.5)
  )
end

---@param p Makurai.Palette
function M.get(p)
  local heading_bg = mix_hex(p.syntax.keyword, p.editor.bg, 0.9)
  local groups = {
    MarkviewHeading1 = { fg = p.syntax.keyword, bg = heading_bg },
    MarkviewHeading2 = { link = "MarkviewHeading1" },
    MarkviewHeading3 = { link = "MarkviewHeading1" },
    MarkviewHeading4 = { link = "MarkviewHeading1" },
    MarkviewHeading5 = { link = "MarkviewHeading1" },
    MarkviewHeading6 = { link = "MarkviewHeading1" },
    MarkviewIcon0 = { fg = p.syntax.keyword, bg = p.editor.surface },
    MarkviewIcon1 = { link = "MarkviewIcon0" },
    MarkviewIcon2 = { link = "MarkviewIcon0" },
    MarkviewIcon3 = { link = "MarkviewIcon0" },
    MarkviewIcon4 = { link = "MarkviewIcon0" },
    MarkviewIcon5 = { link = "MarkviewIcon0" },
    MarkviewIcon6 = { link = "MarkviewIcon0" },
    MarkviewCode = { bg = p.editor.surface },
    MarkviewInlineCode = { bg = p.editor.surface },
    MarkviewListItemMinus = { link = "Function" },
    MarkviewListItemPlus = { link = "Function" },
    MarkviewListItemStar = { link = "Function" },
    MarkviewCheckboxChecked = { fg = p.diagnostic.ok },
    MarkviewCheckboxUnchecked = { fg = p.diagnostic.error },
    MarkviewPalette0Fg = { link = "@markup.link.label.markdown_inline" },
    MarkviewBlockQuoteDefault = { link = "String" },
  }

  local start_color = p.editor.guide
  local end_color = p.editor.border
  for i = 1, 9 do
    local t = (i - 1) / 8
    groups["MarkviewGradient" .. i] = { fg = mix_hex(start_color, end_color, t) }
  end

  return groups
end

return M
