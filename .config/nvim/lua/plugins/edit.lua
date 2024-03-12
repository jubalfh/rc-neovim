--
-- general editing enhancements
--

return {
    -- treesj (split/join via treesitter)
    {
        "Wansmer/treesj",
        keys = {
            "<Leader>m",
            "<Leader>j",
            "<Leader>s",
        },

        dependencies = { "nvim-treesitter/nvim-treesitter" },

        config = function()
            require("treesj").setup({})
        end,
    },

    -- sos (fire-and-forget autosave beyond `autowrite`)
    {
        "tmillr/sos.nvim",

        opts = {
            timeout = 90 * 1000, -- in ms, so 90s
            autowrite = true,
            save_on_cmd = "some",
            save_on_bufleave = true,
            save_on_focuslost = false,
        },
    },

    -- rainbow parentheses
    {
        "HiPhish/rainbow-delimiters.nvim",

        dependencies = { "nvim-treesitter/nvim-treesitter" },
    },

    -- automatic pairs
    {
        "echasnovski/mini.pairs",

        opts = {
            mappings = {
                -- polish quote marks
                ["„"] = {
                    action = "closeopen",
                    pair = "„”",
                    neigh_pattern = "[^\\].",
                    register = { cr = false },
                },

                -- english quote marks
                ["“"] = {
                    action = "closeopen",
                    pair = "“”",
                    neigh_pattern = "[^\\].",
                    register = { cr = false },
                },
            },
        },

        config = true,
    },

    -- block/line moves
    {
        "echasnovski/mini.move",

        opts = {
            mappings = {
                left = "<S-left>",
                right = "<S-right>",
                up = "<S-up>",
                down = "<S-down>",
            },
        },

        config = true,
    },

    -- diff view
    "sindrets/diffview.nvim",

    -- grapple
    "cbochs/grapple.nvim",

    -- deadcolumn
    "Bekaboo/deadcolumn.nvim",

    -- undotree
    "mbbill/undotree",

    -- table mode
    "dhruvasagar/vim-table-mode",

    -- vim-cool
    "romainl/vim-cool",

    -- terminus
    "wincent/terminus",

    -- committia
    "rhysd/committia.vim",

    -- vim-lastplace
    "farmergreg/vim-lastplace",

    -- tpope fanclub
    "tpope/vim-abolish",
    "tpope/vim-capslock",
    "tpope/vim-commentary",
    "tpope/vim-endwise",
    "tpope/vim-fugitive",
    "tpope/vim-rsi",
    "tpope/vim-surround",
}
