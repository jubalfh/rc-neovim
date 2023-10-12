local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    --
    -- native lua plugins
    --
    -- packer itself
    use 'wbthomason/packer.nvim'
    -- nvim-treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    -- twilight (limelight replacement)
    use 'folke/twilight.nvim'
    -- zen mode (goyo replacement)
    use 'folke/zen-mode.nvim'
    -- isort
    use 'stsewd/isort.nvim'
    -- diferente
    use {
        'cvigilv/diferente.nvim',
        config = function() require('diferente').setup() end
    }
    --
    -- regular vimscript
    --
    -- ale
    use {
        'dense-analysis/ale',
        cmd = 'AleEnable',
        config = 'vim.cmd[[AleEnable]]'
    }
    -- table mode
    use 'dhruvasagar/vim-table-mode'
    -- vim-cool
    use 'romainl/vim-cool'
    -- terminus
    use 'wincent/terminus'
    -- mucomplete
    use 'lifepillar/vim-mucomplete'
    -- airline
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'retorillo/airline-tablemode.vim'
    -- gruvbox
    -- use { 'morhetz/gruvbox', as='gruvbox' }
    -- use 'luisiacc/gruvbox-baby'
    use 'sainnhe/gruvbox-material'
    -- signify
    use 'mhinz/vim-signify'
    -- paren-crosshairs
    use 'chreekat/vim-paren-crosshairs'
    -- detectindent
    use 'ciaranm/detectindent'
    -- xolox fanclub
    use 'xolox/vim-misc'
    -- tpope fanclub
    use 'tpope/vim-abolish'
    use 'tpope/vim-capslock'
    use 'tpope/vim-endwise'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rsi'
    use 'tpope/vim-surround'
    -- undotree
    use 'mbbill/undotree'
    -- file formats
    use 'aklt/plantuml-syntax'
    use 'avakhov/vim-yaml'
    use 'elzr/vim-json'
    use 'jubalfh/vim-ldapschema'
    use 'lepture/vim-jinja'
    use 'nfnty/vim-nftables'
    use 'pearofducks/ansible-vim'
    use 'plasticboy/vim-markdown'
    use 'PProvost/vim-ps1'

    -- bootstrap failsafe
    if packer_bootstrap then
        require('packer').sync()
    end
end)
