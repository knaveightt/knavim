--[[
                                       __         _            
  /\ /\ _ __    __ _ __   __  ___   /\ \ \__   __(_) _ __ ___  
 / //_/| '_ \  / _` |\ \ / / / _ \ /  \/ /\ \ / /| || '_ ` _ \ 
/ __ \ | | | || (_| | \ V / |  __// /\  /  \ V / | || | | | | |
\/  \/ |_| |_| \__,_|  \_/   \___|\_\ \/    \_/  |_||_| |_| |_|
                                                               
--]]

-- KnaveNvim, my neovim configuration
-- Dependencies Needed:
-- -> Git

-- Include Core Options, Keymaps, Colorscheme
require("knavenvim.core.options")
require("knavenvim.core.keymaps")
require("knavenvim.core.colorscheme")

-- Include lazy.nvim plugin manager
require("knavenvim.lazy")

-- Include Core Plugin Keymaps, for supported plugins
require("knavenvim.core.pluginkeys")
