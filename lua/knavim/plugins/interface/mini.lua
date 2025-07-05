return {
    'echasnovski/mini.nvim',
    name="mini.nvim",
    version=false,
    lazy=false,
    config=function()
        require("mini.git").setup()

        require("mini.diff").setup({
            view = {
                style = 'sign',
                signs = {
                    add = '+',
                    change = '!',
                    delete = '_',
                }
            }
        })

        -- Simple and easy statusline.
        --  You could remove this setup call if you don't like it,
        --  and try some other statusline plugin
        local statusline = require 'mini.statusline'
        -- set use_icons to true if you have a Nerd Font
        statusline.setup { use_icons = true }

        -- You can configure sections in the statusline by overriding their
        -- default behavior. For example, here we set the section for
        -- cursor location to LINE:COLUMN
        ---@diagnostic disable-next-line: duplicate-set-field
        statusline.section_location = function()
            return '%2l:%-2v'
        end
    end,
}
