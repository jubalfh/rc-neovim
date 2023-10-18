-- just the plugin config
return {
    --
    -- native lua plugins
    --
    -- twilight (limelight replacement)
    'folke/twilight.nvim',
    -- zen mode (goyo replacement)
    'folke/zen-mode.nvim',
    -- isort
    'stsewd/isort.nvim',
    -- library used by other plugins
    { "nvim-lua/plenary.nvim", lazy = true },
    --
    -- regular vimscript
    --
    -- ale
    { 'dense-analysis/ale', event = 'BufEnter' },
    -- table mode
    'dhruvasagar/vim-table-mode',
    -- vim-cool
    { 'romainl/vim-cool', event = 'BufEnter' },
    -- terminus
    'wincent/terminus',
    -- mucomplete
    'lifepillar/vim-mucomplete',
    -- signify
    'mhinz/vim-signify',
    -- committia
    'rhysd/committia.vim',
    -- paren-crosshairs
    'chreekat/vim-paren-crosshairs',
    -- detectindent
    { 'ciaranm/detectindent', lazy = false },
    -- tpope fanclub
    'tpope/vim-abolish',
    'tpope/vim-capslock',
    'tpope/vim-commentary',
    'tpope/vim-endwise',
    'tpope/vim-fugitive',
    'tpope/vim-rsi',
    'tpope/vim-surround',
    -- undotree
    'mbbill/undotree',
    -- golden view
    'zhaocai/GoldenView.vim',
}
