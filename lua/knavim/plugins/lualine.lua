-- lualine configuration
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- lualine theme
local lualine_codedark = require("lualine.themes.codedark")


lualine.setup({
  options = {
      theme = lualine_codedark
  },
})
