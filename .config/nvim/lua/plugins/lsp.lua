return {
    -- ale
    {
        "dense-analysis/ale",
        event = "BufEnter",
        init = function()
            vim.g.ale_use_neovim_diagnostics_api = 1
            vim.g.ale_sh_bashate_options = "-i E003,E006,E043"
            vim.g.ale_linters = {
                -- note that ale is disabled for both shell and python
                -- via .../settings.d/autocommands.vim
                sh = { "language_server", "shellcheck" },
                python = { "ruff", "flake8" }
            }
            vim.g.ale_floating_window_border = { "│", "─", "╭", "╮", "╯", "╰", "│", "─" }
        end,
    },

    -- lspconfig
    {
        "neovim/nvim-lspconfig",
    },

    -- lsp-timeout
    {
        "hinell/lsp-timeout.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
        },
    },

    -- nvim--lint
    { "mfussenegger/nvim-lint" },

    -- nvim-dap
    { "mfussenegger/nvim-dap" },

    -- mason
    {
        "williamboman/mason.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
            "mfussenegger/nvim-lint",
            "mfussenegger/nvim-dap",
        },
    },

    -- mason-lspconfig
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        dependencies = {
            "williamboman/mason.nvim",
        },
        config = function()
            local language_servers = {
                ansiblels = {},
                awk_ls = {},
                bashls = {},
                lua_ls = {
                    settings = { Lua = { diagnostics = { globals = { "vim" } } } },
                },
                pylsp = {
                    settings = {
                        pylsp = {
                            plugins = {
                                pycodestyle = { enabled = false },
                                pylint = { enabled = false },
                            },
                        },
                    },
                },
                ruff_lsp = {},
                yamlls = {},
            }
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = vim.tbl_keys(language_servers),
            })
            for server, config in pairs(language_servers) do
                require("lspconfig")[server].setup(config or {})
            end
        end,
    },
}
