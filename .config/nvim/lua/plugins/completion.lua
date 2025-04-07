--
-- completion configuration
--

-- helper function for the completion engine
local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    if col == 0 then return false end
    local text = vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]
    return text:sub(col, col):match("%s") == nil
end

return {

    "saghen/blink.cmp",
    dependencies = {
        "rafamadriz/friendly-snippets"
    },
    version = "1.*",

    opts = {

        keymap = {
            preset = "none",
            ["<Tab>"] = {
                function(cmp)
                    if has_words_before() then return cmp.insert_next() end
                end,
                "fallback",
            },
            ["<S-Tab>"] = { "insert_prev" },
        },

        completion = {
            trigger = {
                show_on_keyword = false,
                show_on_trigger_character = true,
            },
            menu = { enabled = false },
            list = { selection = { preselect = false }, cycle = { from_top = false } },
        },

        sources = {
            default = { "lsp", "omni", "path", "snippets", "buffer" },
        },

        fuzzy = { implementation = "prefer_rust_with_warning" },
    },

    opts_extend = { "sources.default" },
}
