-- lspsaga configuration
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
  return
end

-- old version below
--
-- saga.setup({
--   move_in_saga = { prev = "<C-k>", next = "<C-j>" },
--   finder_action_keys = {
--     open = "<CR>",
--   },
--   definition_action_keys = {
--     edit = "<CR>",
--   },
-- })

saga.setup({
  scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
  definition = {
    edit = "<CR>",
  },
  ui = {
    colors = {
      normal_bg = "#022746"
    },
  },
})
