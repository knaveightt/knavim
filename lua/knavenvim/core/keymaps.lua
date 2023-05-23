-- knavenvim.core.keymaps
--
-- Represents vim keymap configurations
-- Use `:h vim.map.set()` for description 

-- define common options and variables used
vim.g.mapleader = " "
local opts = {
    noremap = true, -- non-recursive
    silent  = true, -- do not echo keys
}

-- window navigation keys
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- resize splits with arrow keys
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- split management
vim.keymap.set('n', '<leader>sj', '<C-w>s', opts)
vim.keymap.set('n', '<leader>sl', '<C-w>v', opts)
vim.keymap.set('n', '<leader>ss', ':close<CR>', opts)

-- buffer management
vim.keymap.set('n', '<leader>bb', ':bd<CR>', opts)
vim.keymap.set('n', '<leader>bj', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>bk', ':bNext<CR>', opts)

-- tab operations
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts)
vim.keymap.set('n', '<leader>tt', ':tabclose<CR>', opts)
vim.keymap.set('n', '<leader>th', ':tabp<CR>', opts)
vim.keymap.set('n', '<leader>tl', ':tabn<CR>', opts)
vim.keymap.set('n', '<leader>9',  ':tabp<CR>', opts) -- quick alternative
vim.keymap.set('n', '<leader>0', ':tabn<CR>', opts)  -- quick alternative

