-- override for the lualine's location function
-- (modeled on the standard airline behaviour)
local custom_location = function()
  local line = vim.fn.line('.')
  local lines = vim.fn.line('$')
  local col = vim.fn.virtcol('.')
  return string.format(':%d/%d☰ ℅:%-2d', line, lines, col)
end

return {
  -- bufferline
  {
    'akinsho/bufferline.nvim',
    opts = {
      options = {
        always_show_bufferline = false,
      },
    },
  },
  -- lualine
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'auto',
          component_separators = { left = '', right = ''},
          section_separators = { left = '', right = ''},
          disabled_filetypes = {
            statusline = {
              'dashboard',
              'alpha',
              'starter',
            },
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          }
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diagnostics'},
          lualine_c = {
            'diff',
            {
              'filename',
              symbols = {
                modified = '⚡',
                readonly = ''

              }
            },
          },
          lualine_x = {
            'encoding',
            {
              'fileformat',
              symbols = {
                unix = 'cr',
                dos = 'crlf',
                mac = 'lf'
              },
            },
            { 'filetype', icons_enabled = true },
          },
          lualine_y = {'progress'},
          lualine_z = { custom_location, },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = { custom_location, },
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {}
      }
    end,
  },
  -- gruvbox
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function() vim.cmd([[colorscheme gruvbox-material]]) end
  },
}
