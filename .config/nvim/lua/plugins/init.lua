--
-- common components and utilities
--

return {
    -- color highlighting
    "brenoprata10/nvim-highlight-colors",

    -- nui
    "MunifTanjim/nui.nvim",

    -- plenary
    "nvim-lua/plenary.nvim",

    -- devicons
    "nvim-tree/nvim-web-devicons",

    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    },

    {
        "soulis-1256/eagle.nvim",
    }
}
