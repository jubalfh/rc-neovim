return {
    -- file formats

    -- ansible
    {
        "pearofducks/ansible-vim",
        lazy = false,
        dependencies = {
            "lepture/vim-jinja",
        },
    },

    -- jinja
    { "lepture/vim-jinja" },

    -- yaml
    "avakhov/vim-yaml",

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
