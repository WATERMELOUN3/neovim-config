return {
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        dependencies = {
            -- LSP Support
            {"neovim/nvim-lspconfig"},
            {
                "williamboman/mason.nvim",
                build = function()
                    pcall(vim.cmd, "MasonUpdate")
                end,
            },
            {"williamboman/mason-lspconfig.nvim"},

            -- Autocompletion
            {
                "hrsh7th/nvim-cmp",
                config = function()
                    local cmp = require("cmp")
                    cmp.setup({
                        mapping = cmp.mapping.preset.insert({
                            -- confirm completion
                            ['<CR>'] = cmp.mapping.confirm({select = true}),
                            ['<TAB>'] = cmp.mapping.abort(),
                        })
                    })
                end,
            },
            {"hrsh7th/cmp-nvim-lsp"},
            {"L3MON4D3/LuaSnip"},
            {"hrsh7th/cmp-buffer"},
            {"hrsh7th/cmp-path"},
            {"saadparwaiz1/cmp_luasnip"},

            -- Snippets
            {"L3MON4D3/LuaSnip"},
            {"rafamadriz/friendly-snippets"},
        },
        init = function()
            local lsp = require("lsp-zero").preset("recommended")

            lsp.on_attach(function(client, bufnr)
                lsp.default_keymaps({buffer = bufnr})
            end)

            -- (Optional) Configure lua language server for neovim
            require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

            lsp.setup()
        end
    }
}
