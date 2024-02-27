return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        lazy = false,
        cond = false,
        opts = {
            open_mapping = "<leader>;"
        },
        keys = {
            {
                "<leader>;",
                function()
                    require("toggleterm").toggle()
                end,
            },
        },
    }
}
