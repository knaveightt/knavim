-- dependencies:
-- xclip, for default system clipboard integration
-- git
-- patched terminal font

-- import plugin configuration first
require("knavim.plugins-setup")


-- import core module configuration
require("knavim.core.options")
require("knavim.core.keymaps")
require("knavim.core.colorscheme")

-- import plugin specific configuration
require("knavim.plugins.comment")
require("knavim.plugins.nvim-tree")
require("knavim.plugins.lualine")
require("knavim.plugins.telescope")
