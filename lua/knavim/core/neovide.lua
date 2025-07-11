-- Neovide specific settings
if vim.g.neovide then
    vim.o.guifont = "JetBrainsMono Nerd Font:h12"
end

---
--- Neovide Custom Functions
---

vim.api.nvim_create_user_command("NeovideToggleFullscreen",
    "let g:neovide_fullscreen = !g:neovide_fullscreen", {})
vim.keymap.set("n", "<F11>", "<cmd>NeovideToggleFullscreen<CR>", { desc = "Neovide Toggle Fullscreen" })
