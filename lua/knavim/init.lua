-- dependencies:
-- xclip, for default system clipboard integration
-- git
-- patched terminal font
-- fzf, ripgrep

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
require("knavim.plugins.nvim-cmp")
require("knavim.plugins.gitsigns")

-- import lsp plugin specific configuration
require("knavim.plugins.lsp.mason")
require("knavim.plugins.lsp.lspsaga")
require("knavim.plugins.lsp.lspconfig")

-- autopairs and treesitter related things
require("knavim.plugins.autopairs")
require("knavim.plugins.treesitter")

-- startup dashboard config
require("knavim.plugins.startup")
