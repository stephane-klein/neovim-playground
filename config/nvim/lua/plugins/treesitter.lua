return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "master",
    build = ":TSUpdate",
    config = function()
        local function setup_treesitter()
            local ok, configs = pcall(require, "nvim-treesitter.configs")
            if not ok then
                vim.defer_fn(setup_treesitter, 100)
                return
            end
            configs.setup({
                ensure_installed = {
                    "bash",
                    "css",
                    "diff",
                    "go",
                    "gotmpl",
                    "graphql",
                    "html",
                    "javascript",
                    "json",
                    "lua",
                    "luadoc",
                    "markdown",
                    "ninja",
                    "python",
                    "svelte",
                    "toml",
                    "terraform",
                    "vim",
                    "vimdoc",
                    "yaml",
                },
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
                incremental_selection = { enable = true },
            })
        end
        setup_treesitter()
    end,
}
