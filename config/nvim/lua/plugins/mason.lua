-- LSP Configuration
return {
    'mason-org/mason-lspconfig.nvim',
    opts = {
        -- Tips about the name: https://github.com/mason-org/mason-lspconfig.nvim/blob/3b3571b4dadbcb464804466e9872e7246c316af7/doc/mason-lspconfig.txt#L18
        ensure_installed = {
            "lua_ls",
            "cssls",
            "prettierd",
            "svelte",
            "tailwindcss",
            "ts_ls"
        },
        automatic_enable = true
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
