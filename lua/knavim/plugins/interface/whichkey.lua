return {
    "folke/which-key.nvim",
    name = "which-key",
    event = "VimEnter",
    opts = {
        delay = 0,
        -- Document existing key chains
        spec = {
            { '<leader>,', group = 'Change Working Dir' },
            { '<leader>g', group = '[G]it Comands' },
            { '<leader>s', group = '[S]earch Commands' },
            { '<leader>t', group = '[T]oggle Commands' },
            { '<leader>o', group = '[O]bsidian Commands' },
            --{ '<leader>t', group = '[T]oggle' },
            --{ '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
        },
    },
}
