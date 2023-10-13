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
    -- xolox fanclub
    'xolox/vim-misc',
    -- tpope fanclub
    'tpope/vim-abolish',
    'tpope/vim-capslock',
    'tpope/vim-endwise',
    'tpope/vim-fugitive',
    'tpope/vim-rsi',
    'tpope/vim-surround',
    -- undotree
    'mbbill/undotree',
    -- golden view
    'zhaocai/GoldenView.vim',
    -- file formats
    'aklt/plantuml-syntax',
    'avakhov/vim-yaml',
    'elzr/vim-json',
    'jubalfh/vim-ldapschema',
    'lepture/vim-jinja',
    'nfnty/vim-nftables',
    'pearofducks/ansible-vim',
    'plasticboy/vim-markdown',
    'PProvost/vim-ps1',
}
