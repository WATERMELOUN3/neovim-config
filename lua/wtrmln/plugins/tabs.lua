return {
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        keys = {
            { '<A-,>', '<Cmd>BufferPrevious<CR>' },
            { '<A-.>', '<Cmd>BufferNext<CR>' },
            { '<A-c>', '<Cmd>BufferClose<CR>' },
            { '<leader>t', '<Cmd>BufferPick<CR>' },
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            auto_hide = 1,
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
        lazy = false,
    },
}
