-- set leader key for keymaps, and way to escape
vim.g.mapleader=" "
vim.g.maplocalleader=" "
local keymap = vim.keymap

--
-- buffer keymaps
--
keymap.set("n", "<leader>B", ":ls<cr>:b<Space>", {desc="Quick [B]uffer List"})

--
-- visual mode improvements
--
keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc="move lines down, visual mode"})
keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc="move lines up, visual mode"})
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

--
-- spits and windows keymaps
--
keymap.set("n", "<leader>w", "<C-w>", { desc="[W]indow Management" })
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<M-h>", ":vertical resize -1<CR>")
keymap.set("n", "<M-l>", ":vertical resize +1<CR>")
keymap.set("n", "<M-j>", ":resize +1<CR>")
keymap.set("n", "<M-k>", ":resize -1<CR>")

--
-- scrolling
--
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

--
-- search keymaps
--
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

--
-- diagnostics
--
keymap.set('n', 'gd', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

--
-- working directory keymaps
--
keymap.set("n", "<leader>,,", "<cmd>cd C:/Users/josinski/AppData/Local/nvim<CR>")
