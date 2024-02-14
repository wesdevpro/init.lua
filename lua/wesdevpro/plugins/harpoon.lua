return {
    {
        "ThePrimeagen/harpoon",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        keys = function()
            local mark = require("harpoon.mark")
            local ui = require("harpoon.ui")
            
            return {
                {"<leader>a", mark.add_file},
                {"<C-e>", ui.toggle_quick_menu},
                {"<C-t>", function() ui.nav_file(1) end},
                {"<C-h>", function() ui.nav_file(2) end},
                {"<C-m>", function() ui.nav_file(3) end},
                {"<C-n>", function() ui.nav_file(4) end},
            }
        end,
    },
}
