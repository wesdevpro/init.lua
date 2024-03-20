return {
    "nvim-telescope/telescope.nvim",
    event = 'VimEnter',
    dependencies = {
        "nvim-lua/plenary.nvim",
        -- "folke/trouble.nvim",
    },
    config = function()
        local telescope = require('telescope').setup({
            extensions = {
                ['todo-comments']  = {},
            }
        })
--        telescope.load_extension('todo-comments')
    end,
    keys = function()
        local builtin = require('telescope.builtin')
        -- local trouble = require("trouble.providers.telescope")

        return {
            { "<leader>pf", builtin.find_files },
            { "<C-p>", builtin.git_files },
            { 
                "<leader>ps",
                function()
                    builtin.grep_string({ search = vim.fn.input("Grep > ") })
                end
            },
            -- { "<C-t>", trouble.open_with_trouble },
            { "<leader>vh", builtin.help_tags },
        }
    end,
}
