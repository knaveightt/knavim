---
--- knavim - my neovim configuration
---

-- Required Dependencies include:
-- a) patched nerd font (i.e. JetBrainsMono)
-- b) 'git' in path
-- c) 'lazygit' in path
-- d) 'ripgrep' in path
-- d) tar/curl and c compilter w/ libstdc++ (Treesitter grammer compilation)

-- load core knavim configuration options
require("knavim.core")

-- load plugins via lazy
require("knavim.lazy")
