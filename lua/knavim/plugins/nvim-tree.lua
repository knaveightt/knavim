-- nvim-tree configuration
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- recommended settings to disable netrw
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- arrow color
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvimtree.setup({
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "",
          arrow_open = "",
        },
      },
    },
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false, -- better working with splits
      },
    },
  },
})
