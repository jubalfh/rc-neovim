--
-- completion configuration
--

return {
    "hrsh7th/nvim-cmp",

    event = "VeryLazy",

    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/vim-vsnip",
        "hrsh7th/cmp-vsnip",
        "SergioRibera/cmp-dotenv",
    },

    config = function()
        vim.opt.completeopt = { "menu", "menuone", "noselect", "noinsert", "preview" }

        local cmp = require("cmp")

        local has_words_before = function()
            local line, col = unpack(vim.api.nvim_win_get_cursor(0))
            return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
        end

        local feedkey = function(key, mode)
            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
        end

        function set_auto_cmp(mode) -- luacheck:ignore 111
            if mode then
                cmp.setup({
                    completion = {
                        autocomplete = { require("cmp.types").cmp.TriggerEvent.TextChanged },
                    },
                })
            else
                cmp.setup({
                    completion = {
                        autocomplete = false,
                    },
                })
            end
        end
        set_auto_cmp(false) -- luacheck:ignore 113

        -- enable automatic completion popup on typing
        vim.cmd("command AutoCmpOn lua set_auto_cmp(true)")

        -- disable automatic competion popup on typing
        vim.cmd("command AutoCmpOff lua set_auto_cmp(false)")

        cmp.setup({
            snippet = {
                expand = function(args)
                    vim.fn["vsnip#anonymous"](args.body)
                end,
            },

            window = {
                -- completion = cmp.config.window.bordered(),
                -- documentation = cmp.config.window.bordered(),
            },

            mapping = cmp.mapping.preset.insert({
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif vim.fn["vsnip#available"](1) == 1 then
                        feedkey("<Plug>(vsnip-expand-or-jump)", "")
                    elseif has_words_before() then
                        cmp.complete()
                    else
                        fallback()
                        -- The fallback function sends a already mapped
                        -- key. In this case, it's probably `<Tab>`.
                    end
                end, { "i", "s" }),

                ["<S-Tab>"] = cmp.mapping(function()
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif vim.fn["vsnip#jumpable"](-1) == 1 then
                        feedkey("<Plug>(vsnip-jump-prev)", "")
                    end
                end, { "i", "s" }),

                ["<C-k>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
                ["k"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),

                ["<C-j>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
                ["j"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),

                ["<C-b>"] = cmp.mapping.scroll_docs(-4),

                ["<C-f>"] = cmp.mapping.scroll_docs(4),

                ["<C-Space>"] = cmp.mapping.complete(),

                ["<C-e>"] = cmp.mapping.abort(),

                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                -- Accept currently selected item. Set `select` to
                -- `false` to only confirm explicitly selected items.
                --
                ["<S-CR>"] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Replace,
                    select = true,
                }),
                -- Accept currently selected item. Set `select` to
                -- `false` to only confirm explicitly selected items.
                --
                ["<C-CR>"] = function(fallback)
                    cmp.abort()
                    fallback()
                end,
            }),

            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "ale" },
                { name = "vsnip" },
            }, {
                { name = "env" },
                { name = "path" },
                { name = "buffer" },
            }),
        })
    end,
}
