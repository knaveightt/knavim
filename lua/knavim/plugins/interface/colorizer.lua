return {
    "norcalli/nvim-colorizer.lua",
    name = "colorizer",
    event = "VeryLazy",
    keys = {
        { "<leader>tc", "<cmd>ColorizerToggle<CR>", desc="Toggle [C]olorizer" }
    },
    config = function()
        local colorize = require("colorizer") 
        colorize.setup({})
    end,
}
