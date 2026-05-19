local M = {}

function M.get()
  return {
    AerialNormal      = { link = "Normal" },
    AerialNormalFloat = { link = "NormalFloat" },
    AerialGuide       = { link = "Whitespace" },
  }
end

return M
