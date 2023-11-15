-- override for the lualine's location function
-- (modeled on the standard airline behaviour)
local airline_file_loc = function()
    local line = vim.fn.line(".")
    local lines = vim.fn.line("$")
    local col = vim.fn.virtcol(".")
    return string.format(":%d/%d☰ ℅:%d", line, lines, col)
end

return {
    -- bufferline
    {
        "akinsho/bufferline.nvim",
        opts = {
            options = {
                always_show_bufferline = false,
                buffer_close_icon = "×",
                color_icons = false,
                show_buffer_icons = false,
            },
        },
    },

    -- lualine
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        config = function()
            require("lualine").setup({
                options = {
                    icons_enabled = true,
                    theme = "auto",
                    component_separators = { left = "", right = "" },
                    section_separators = { left = "", right = "" },
                    disabled_filetypes = {
                        statusline = {
                            "dashboard",
                            "alpha",
                            "starter",
                        },
                        winbar = {
                            "dashboard",
                            "alpha",
                            "starter",
                        },
                    },
                    ignore_focus = {},
                    always_divide_middle = true,
                    globalstatus = true,
                    refresh = {
                        statusline = 1000,
                        tabline = 1000,
                        winbar = 1000,
                    },
                },
                sections = {
                    lualine_a = {
                        {
                            "buffers",
                            filetype_names = {
                                undotree = "UNDO",
                            },
                            symbols = {
                                readonly = " ",
                            },
                        },
                    },
                    lualine_b = { "diagnostics" },
                    lualine_c = {
                        "diff",
                        {
                            "filename",
                            file_status = false,
                            newfile_status = true,
                            path = 3,
                            shorting_target = 35,
                        },
                    },
                    lualine_x = {
                        "branch",
                        -- {
                        --     "filetype",
                        --     icons_enabled = true,
                        --     colored = false,
                        --     icon = { "x", align = "center" },
                        -- },
                        -- "encoding",
                    },
                    lualine_y = { "progress" },
                    lualine_z = { airline_file_loc, "mode" },
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = { "filename" },
                    lualine_x = { airline_file_loc },
                    lualine_y = {},
                    lualine_z = {},
                },
                tabline = {},
                winbar = {},
                inactive_winbar = {},
                extensions = {},
            })
        end,
    },

    -- gruvbox
    {
        "sainnhe/gruvbox-material",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme gruvbox-material]])
        end,
    },
}
