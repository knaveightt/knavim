return {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = false,
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            style='night',
            on_colors = function(colors)
                colors.bg='#000000'
            end,
        })
        vim.cmd.colorscheme "tokyonight-night"
    end,
}
