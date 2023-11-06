return {
  -- ale
  {
    "dense-analysis/ale",
    event = "BufEnter",
    init = function()
      vim.g.ale_use_neovim_diagnostics_api = 1
      vim.g.ale_sh_bashate_options = "-i E003,E006,E043"
      vim.g.ale_linters = {
        sh = { "language_server", "shellcheck", "bashate" }
      }
      vim.g.ale_floating_window_border = { "│", "─", "╭", "╮", "╯", "╰", "│", "─" }
    end
  },

  -- deadcolumn
  { "Bekaboo/deadcolumn.nvim", },

  -- isort
  "stsewd/isort.nvim",

  -- table mode
  "dhruvasagar/vim-table-mode",

  -- vim-cool
  "romainl/vim-cool",

  -- terminus
  "wincent/terminus",

  -- committia
  "rhysd/committia.vim",

  -- tpope fanclub
  "tpope/vim-abolish",
  "tpope/vim-capslock",
  "tpope/vim-commentary",
  "tpope/vim-endwise",
  "tpope/vim-fugitive",
  "tpope/vim-rsi",
  "tpope/vim-surround",
}
