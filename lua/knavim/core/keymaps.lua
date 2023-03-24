-- my keymaps configuration

-- setup leader key cirst
vim.g.mapleader = " "
local keymap = vim.keymap -- for conveneince

-- clear highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- prevent deleting characters from being put into a register
keymap.set("n", "x", '"_x')

-- split window manipulation
keymap.set("n", "<C-w>l", "<C-w>v")                 -- new split vertically
keymap.set("n", "<C-w>j", "<C-w>s")                 -- new split horizontally
keymap.set("n", "<C-w><C-w>", ":close<CR>")         -- close split
--keymap.set("n", "<C-h>", "<C-w>h")                -- these should now be managed by vim-tmux-navigator
--keymap.set("n", "<C-j>", "<C-w>j")
--keymap.set("n", "<C-k>", "<C-w>k")
--keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<M-h>", ":vertical resize -1<CR>") -- split resize keys
keymap.set("n", "<M-l>", ":vertical resize +1<CR>")
keymap.set("n", "<M-k>", ":resize -1<CR>")
keymap.set("n", "<M-j>", ":resize +1<CR>")

-- managing tabs
keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tn", ":tabn<CR>")
keymap.set("n", "<leader>tp", ":tabp<CR>")
keymap.set("n", "g,", ":tabp<CR>") -- quick motion
keymap.set("n", "g.", ":tabn<CR>") -- quick motion

--
-- plugin keymaps
--

-- vim-maximizer
keymap.set("n", "<C-w>w", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>ft", ":NvimTreeToggle<CR>")

-- telescope commands
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
keymap.set("n", "<leader>ws", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>bf", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>hf", "<cmd>Telescope help_tags<CR>")

