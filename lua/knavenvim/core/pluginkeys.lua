-- knavenvim.core.pluginkeys
--
-- Represents vim keymap configurations
-- for loaded plugins

local opts = {
    noremap = true, -- non-recursive
    silent  = true, -- do not echo keys
}

-- nvim-tree
vim.keymap.set('n', '<leader>ee', ':NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '<leader>1', ':NvimTreeToggle<CR>', opts) -- quick alternative

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

-- vim-fugitive
vim.keymap.set('n', '<leader>gg', ':Git<CR>', opts)