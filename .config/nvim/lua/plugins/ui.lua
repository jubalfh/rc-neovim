--
-- general ui configuration
--

return {
    -- twilight (limelight replacement)
    "folke/twilight.nvim",

    -- zen mode (goyo replacement)
    {
        "folke/zen-mode.nvim",

        opts = {
            window = {
                width = 80,
                options = {
                    signcolumn = "no",
                    number = false,
                    cursorcolumn = false,
                    cursorline = false,
                    foldcolumn = "0",
                },
            },
            plugins = {
                options = {
                    enabled = true,
                },
                gitsigns = { enabled = false },
                twilight = { enabled = true },
            },
        },
    },

    -- telescope cluster
    "nvim-telescope/telescope.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",

    -- trouble
    {
        "folke/trouble.nvim",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    },

    -- golden view
    {
        "zhaocai/GoldenView.vim",

        init = function()
            vim.g.goldenview__enable_default_mapping = 0
        end,
    },

    -- detectindent
    { "ciaranm/detectindent", lazy = false },

    -- gitsigns.nvim
    {
        "lewis6991/gitsigns.nvim",

        opts = {
            signs = {
                add = { text = "﹢" },
                delete = { text = "﹣" },
                change = { text = "⸽" },
            },
            signcolumn = true,
            attach_to_untracked = true,
        },
    },

    -- `vim.notify()` enhancement
    {
        "rcarriga/nvim-notify",

        keys = {
            {
                "<leader>un",
                function()
                    require("notify").dismiss({ silent = true, pending = true })
                end,
                desc = "Dismiss all Notifications",
            },
        },

        opts = {
            timeout = 3000,
            max_height = function()
                return math.floor(vim.o.lines * 0.75)
            end,
            max_width = function()
                return math.floor(vim.o.columns * 0.75)
            end,
            on_open = function(win)
                vim.api.nvim_win_set_config(win, { zindex = 100 })
            end,
        },
    },

    -- better vim.ui
    {
        "stevearc/dressing.nvim",
        lazy = true,

        init = function()
            ---@diagnostic disable-next-line: duplicate-set-field
            vim.ui.select = function(...)
                require("lazy").load({ plugins = { "dressing.nvim" } })
                return vim.ui.select(...)
            end
            ---@diagnostic disable-next-line: duplicate-set-field
            vim.ui.input = function(...)
                require("lazy").load({ plugins = { "dressing.nvim" } })
                return vim.ui.input(...)
            end
        end,
    },

    -- indent guides for neovim
    {
        "lukas-reineke/indent-blankline.nvim",
        -- event = "VeryLazy",

        opts = {
            indent = {
                char = "│",
                tab_char = "│",
            },
            scope = { enabled = false },
            exclude = {
                filetypes = {
                    "help",
                    "alpha",
                    "dashboard",
                    "neo-tree",
                    "Trouble",
                    "lazy",
                    "mason",
                    "notify",
                    "toggleterm",
                    "lazyterm",
                    "markdown",
                },
            },
        },

        main = "ibl",
    },

    -- active indent guide and indent text objects. (highlights
    -- the current level of indentation, and animates the highlighting)
    {
        "echasnovski/mini.indentscope",
        version = false,
        event = "VeryLazy",
        opts = {
            symbol = "│",
            options = { try_as_border = true },
            draw = {
                animation = function()
                    return 0
                end,
            },
        },

        init = function()
            vim.api.nvim_create_autocmd("FileType", {
                pattern = {
                    "help",
                    "alpha",
                    "dashboard",
                    "neo-tree",
                    "Trouble",
                    "lazy",
                    "mason",
                    "notify",
                    "toggleterm",
                    "lazyterm",
                },
                callback = function()
                    vim.b.miniindentscope_disable = true
                end,
            })
            vim.api.nvim_create_user_command("IBLEnableBuffer", function()
                require("ibl").setup_buffer(0, { enabled = true })
            end, {
                bar = true,
                desc = "Enables indent-blankline for the current buffer",
            })

            vim.api.nvim_create_user_command("IBLDisableBuffer", function()
                require("ibl").setup_buffer(0, { enabled = false })
            end, {
                bar = true,
                desc = "Disables indent-blankline for the current buffer",
            })
        end,
    },

    -- displays a popup with possible key bindings of the command you started typing
    "folke/which-key.nvim",
}
