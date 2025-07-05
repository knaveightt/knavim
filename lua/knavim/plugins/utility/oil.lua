return {
    'stevearc/oil.nvim',
    name = "oil",
    lazy = false,
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    config = function()
        require("oil").setup({
            default_file_explorer = true, -- use oil instead of netrw
            columns = { },
            delete_to_trash = true,
            view_options = {
                show_hidden = true,
            },
        })

        vim.keymap.set("n", "-", "<cmd>Oil<cr>", {desc="Open parent directory"})
    end,
}
