-- knavenvim.core.colorscheme
--
-- Represents my current colorscheme configuration

local status, _ = pcall(vim.cmd, "colorscheme slate")
if not status then
    print("!-ERR: Colorscheme could not be changed.")
    return
end

