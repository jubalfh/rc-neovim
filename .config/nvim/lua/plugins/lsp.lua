return {
  -- ale
  {
    "dense-analysis/ale",
    event = "BufEnter",
    init = function()
      vim.g.ale_use_neovim_diagnostics_api = 1
      vim.g.ale_sh_bashate_options = "-i E003,E006,E043"
      vim.g.ale_linters = {
        sh = { "language_server", "shellcheck" }
      }
      vim.g.ale_floating_window_border = { "│", "─", "╭", "╮", "╯", "╰", "│", "─" }
    end
  },

  -- lspconfig
  {
    "neovim/nvim-lspconfig"
  },

  -- lsp-timeout
  {
    "hinell/lsp-timeout.nvim",
    dependencies = {
      "neovim/nvim-lspconfig"
    }
  },

  -- nvim--lint
  { "mfussenegger/nvim-lint" },

  -- nvim-dap
  { "mfussenegger/nvim-dap" },

  -- mason
  {
    "williamboman/mason.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-lint",
      "mfussenegger/nvim-dap",
    },
  },

  -- mason-lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    dependencies = {
      "williamboman/mason.nvim",
    },
    config = function()
      local language_servers = {
        ansiblels = {},
        bashls = {},
        jedi_language_server = {},
        lua_ls = {
          settings = { Lua = { diagnostics = { globals = {'vim'}, }, }, },
        },
        yamlls = {},
        -- upstream issue with awk-language-server
        -- awk_ls = {},
      }
      require("mason").setup()
      require("mason-lspconfig").setup {
        ensure_installed = vim.tbl_keys(language_servers)
      }
      for server, config in pairs(language_servers) do
        require("lspconfig")[server].setup(config or {})
      end
    end,
  },
}
