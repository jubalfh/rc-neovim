return {
    -- airline
    'vim-airline/vim-airline-themes',
    'retorillo/airline-tablemode.vim',
    { 'vim-airline/vim-airline',
        lazy = false,
        priority = 1000,
        dependencies = {
            'vim-airline/vim-airline-themes',
            'retorillo/airline-tablemode.vim',
        },
        config = function() vim.cmd([[colorscheme gruvbox-material]]) end
    },
    -- gruvbox
    {
        'sainnhe/gruvbox-material',
        lazy = false,
        priority = 1000,

    },
}
