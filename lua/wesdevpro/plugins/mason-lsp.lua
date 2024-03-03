return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim"
        },
        options = function() 
            require("mason").setup()
            require("mason-lspconfig").setup {
                ensure_installed = { "lua_ls", "csharp_ls"},
            }
        end
    }

}
