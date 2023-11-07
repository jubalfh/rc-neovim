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

    -- deadcolumn
    { "Bekaboo/deadcolumn.nvim" },

    -- undotree
    {
        "mbbill/undotree",
    },

    -- isort
    "stsewd/isort.nvim",

    -- table mode
    "dhruvasagar/vim-table-mode",

    -- vim-cool
    "romainl/vim-cool",

    -- terminus
    "wincent/terminus",

    -- committia
    "rhysd/committia.vim",

    -- tpope fanclub
    "tpope/vim-abolish",
    "tpope/vim-capslock",
    "tpope/vim-commentary",
    "tpope/vim-endwise",
    "tpope/vim-fugitive",
    "tpope/vim-rsi",
    "tpope/vim-surround",
}
