return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        -- find
        {
            "<C-f>",
            function() require("telescope.builtin").find_files() end,
            desc = "Find project files",
        },
        {
            "<C-p>",
            function() require("telescope.builtin").git_files() end,
            desc = "Find git files",
        },
        {
            "<leader>ps",
            function() require("telescope.builtin").grep_string({ cwd = vim.loop.cwd(), search = "" }) end,
            desc = "Find string",
        },
    },
    opts = {
    },
}
