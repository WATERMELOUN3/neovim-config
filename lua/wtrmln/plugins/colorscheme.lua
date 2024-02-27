return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            flavour = "mocha",
            color_overrides = {
                base = "#000000",
            },
            integrations = {
                nvimtree = true,
            },
            highlight_overrides = {
                mocha = function(mocha)
                    return {
                        NvimTreeNormal = { bg = mocha.none },
                    }
                end,
            },
        },
        config = function()
            vim.cmd.colorscheme("catppuccin")
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
    },
}
