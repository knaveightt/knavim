return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {

        },
        dependencies = { { "echasnovski/mini.icons", opts={} } },
        keys = {
            {"<leader>gs", function() require("snacks").lazygit() end, desc="Lazy[g]it" },
            {"<leader>gl", function() require("snacks").lazygit.log() end, desc="Lazygit [l]ogs"},
            {"<leader>tt", function() require("snacks").explorer() end, desc="Toggle File [T]ree"},
            {"<leader>sf", function() require("snacks").picker.files() end, desc="Search [F]iles"},
            {"<leader>sh", function() require("snacks").picker.help() end, desc="Search [H]elp"},
            {"<leader>su", function() require("snacks").picker.undo() end, desc="Search [U]ndo"},
            {"<leader>q", function() require("snacks").bufdelete() end, desc="Quit Buffer"},
            {"<leader>b", function() require("snacks").picker.buffers() end, desc="Switch to [B]uffer"},
        },
    }
}
