--
-- file formats
--

return {

    -- jinja
    "lepture/vim-jinja",

    -- yaml
    "avakhov/vim-yaml",

    -- ansible
    {
        "pearofducks/ansible-vim",
        lazy = false,

        dependencies = {
            "lepture/vim-jinja",
        },
    },

    -- python: isort
    "stsewd/isort.nvim",

    -- python: venv selector
    {
        "linux-cultist/venv-selector.nvim",

        dependencies = {
            "neovim/nvim-lspconfig",
            "nvim-telescope/telescope.nvim",
            "mfussenegger/nvim-dap-python",
        },

        event = "VeryLazy",

        keys = {
            { "<leader>vs", "<cmd>VenvSelect<cr>" },
            { "<leader>vc", "<cmd>VenvSelectCached<cr>" },
        },
    },

    -- json
    {
        "elzr/vim-json",

        init = function()
            vim.g.vim_json_syntax_conceal = 0
        end,
    },

    -- markdown
    {
        "plasticboy/vim-markdown",

        dependencies = {
            "folke/zen-mode.nvim",
        },
    },

    -- ldap schema
    "jubalfh/vim-ldapschema",

    -- plantuml
    "aklt/plantuml-syntax",

    -- nftables
    "nfnty/vim-nftables",

    -- powershell
    "PProvost/vim-ps1",
}
