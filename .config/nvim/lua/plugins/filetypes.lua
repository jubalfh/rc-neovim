--
-- file formats
--

return {

    -- jinja
    "lepture/vim-jinja",

    -- yaml
    "avakhov/vim-yaml",

    {
        "someone-stole-my-name/yaml-companion.nvim",

        config = function()
            require("telescope").load_extension("yaml_schema")
        end,

        dependencies = {
            "neovim/nvim-lspconfig",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        }
    },

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

    {
        "gennaro-tedesco/nvim-jqx",

        event = { "BufReadPost" },

        ft = { "json", "yaml" },
    },

    -- csv
    {
        "VidocqH/data-viewer.nvim",

        opts = {},

        dependencies = {
            "nvim-lua/plenary.nvim",
            "kkharji/sqlite.lua",
        }

    },

    -- markdown
    {
        "plasticboy/vim-markdown",

        dependencies = {
            "folke/zen-mode.nvim",
        },
    },

    {
        "MeanderingProgrammer/render-markdown.nvim",

        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons",
        },

        opts = {},
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
