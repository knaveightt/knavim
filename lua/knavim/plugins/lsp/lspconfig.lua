-- configuring of lsp servers themselves
local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local keymap = vim.keymap
-- enable keybinds for available lsp server
-- note, you can also configure keybinds for specific lsp servers (e.g. typescript)
local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr } -- normal mode maps

  -- set keybinds for general / all lsps
  keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts)
  keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
  keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
  keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
  keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
  keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
  keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
  keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
  keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
  keymap.set("n", "<leader>o", "<cmd>LSoutlineTOggle<CR>", opts)
end

-- enable autocompletions for each server
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig["clangd"].setup({
  capabilities = capabilities, -- completions
  on_attach = on_attach,       -- keybinds
})

lspconfig["rust_analyzer"].setup({
  capabilities = capabilities, -- completions
  on_attach = on_attach,       -- keybinds
})

lspconfig["lua_ls"].setup({
  capabilities = capabilities, -- completions
  on_attach = on_attach,       -- keybinds
  settings = {
    Lua = {
      -- make language server recognize "vim" global
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

