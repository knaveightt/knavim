-- knavenvim.core.options
--
-- Represents vim options modified to taste
-- Use `:h <option>` for description of the setting

vim.opt.clipboard   = 'unnamedplus'                   -- use system clipboard
vim.opt.completeopt = {'menu', 'menuone', 'noselect'} -- how insert completions should work
vim.opt.mouse       = 'a'                             -- enable mouse, why not

-- tab/spaces options
vim.opt.tabstop     = 4    -- visual spaces per tab
vim.opt.softtabstop = 4    -- number of spaces in tab in editing
vim.opt.shiftwidth  = 4    -- insert 4 spaces when pressing tab
vim.opt.expandtab   = true -- tabs are spaces, no matter what

-- UI configuration
vim.opt.number         = true  -- show absolute number on current line
vim.opt.relativenumber = true  -- show relative numbers above/below line
vim.opt.cursorline     = true  -- highlight cursor line underneath cursor
vim.opt.splitbelow     = true  -- open new verticle splits on bottom
vim.opt.splitright     = true  -- open new horizontal splits on right
vim.opt.showmode       = false -- we don't need to see what mode we're in
vim.opt.termguicolors  = true -- enable 24-bit RBG color in the TUI

-- search configuration
vim.opt.incsearch  = true  -- search as characters are entered
vim.opt.hlsearch   = false -- do not highlight matches
vim.opt.ignorecase = true  -- ignore case by default
vim.opt.smartcase  = true  -- but make it case sensitive if uppercase letter is used

-- global variable switches
vim.g.loaded_netrw = 1       -- disable netrw
vim.g.loaded_netrwPlugin = 1 -- because we will import nvim-tree