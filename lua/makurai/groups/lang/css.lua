local M = {}

local prop_groups = {
  "Animation", "Aural", "Background", "Border", "Box", "Color",
  "Dimension", "FlexibleBox", "Font", "FontDescriptor",
  "GeneratedContent", "Grid", "Hyerlink", "List", "MobileText",
  "MultiColumn", "Paging", "Positioning", "Print", "Render",
  "Scrollbar", "Table", "Text", "Transform", "Transition", "UI",
}

---@param p Makurai.Palette
function M.get(p)
  local groups = {
    cssBraces = { link = "Identifier" },
    cssClassName = { link = "Keyword" },
    cssPseudoClassId = { link = "Type" },
    cssCustomProp = { link = "String" },
  }

  for _, name in ipairs(prop_groups) do
    groups["css" .. name .. "Prop"] = { link = "Function" }
  end

  return groups
end

return M
