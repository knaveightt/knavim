return {
    "folke/todo-comments.nvim",
    name = "todo-comments",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    -- [[
    -- TODO
    -- HACK
    -- WARN
    -- PERF
    -- NOTE
    -- TEST
    -- ]]
    keys = {
        { "<leader>st", function() require("snacks").picker.todo_comments() end, desc = "Search [T]odo" },
    }
}
