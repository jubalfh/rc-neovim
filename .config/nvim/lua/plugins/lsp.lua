--
-- language servers, linters, debuggers, oh my!
--

local language_servers = {
    awk_ls = {},
    -- ast_grep = {},
    ansiblels = {
        settings = {
            ansible = {
                validation = {
                    lint = { enabled = true },
                },
            },
        },
    },
    bashls = {},
    lua_ls = {
        filetypes = { "lua" },
        root_files = {
            ".luarc.json",
            ".luacheckrc",
            ".stylua.toml",
            "stylua.toml",
            "selene.toml",
            "init.lua",
        },
        settings = {
            Lua = {
                runtime = { version = "LuaJIT" },
                diagnostics = {
                    globals = { "vim", "use" },
                },
                telemetry = { enable = false },
            },
        },
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
    ruff = {},
    yamlls = {
        settings = {
            redhat = { telemetry = { enabled = false } },
            yaml = {
                validate = true,
                format = { enable = true },
                hover = true,
                schemaStore = {
                    enable = true,
                    url = "https://www.schemastore.org/api/json/catalog.json",
                },
                schemaDownload = { enable = true },
                schemas = {},
                trace = { server = "debug" },
            },
        },
    },
}

return {
    -- ale
    {
        "dense-analysis/ale",
        event = "BufEnter",

        init = function()
            vim.g.ale_use_neovim_diagnostics_api = 1
            vim.g.ale_disable_lsp = 1
            vim.g.ale_sh_bashate_options = "-i E003,E006,E043"
            vim.g.ale_floating_window_border = { "│", "─", "╭", "╮", "╯", "╰", "│", "─" }
            vim.g.ale_fixers = {
                "remove_trailing_lines",
                "trim_whitespace",
            }
        end,
    },

    -- lspconfig
    {
        "neovim/nvim-lspconfig",
        lazy = true,
        config = function()
            local capabilities = require("blink.cmp").get_lsp_capabilities()
            vim.lsp.config("*", {
                capabilities = capabilities,
                root_markers = { ".git", ".hg" },
            })
            for server, config in pairs(language_servers) do
                vim.lsp.config(server, config or {})
            end
        end,
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
        "mason-org/mason.nvim",
        event = "VeryLazy",

        opts = {},

        dependencies = {
            "neovim/nvim-lspconfig",
            "mfussenegger/nvim-lint",
            "mfussenegger/nvim-dap",
        },
    },

    -- mason-lspconfig
    {
        "mason-org/mason-lspconfig.nvim",
        lazy = false,

        dependencies = {
            "mason-org/mason.nvim",
        },

        config = function()
            require("lspconfig")
            require("mason-lspconfig").setup({
                ensure_installed = vim.tbl_keys(language_servers),
                automatic_enable = true,
            })
        end,
    },
}
