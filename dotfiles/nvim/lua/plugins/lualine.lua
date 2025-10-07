-- Status line
return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  opts = {
    options = {
      disabled_filetypes = {
        "neo-tree"
      },
    },
    -- bottom line
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff'},
      lualine_c = {'diagnostics'},
      lualine_x = {'searchcount'},
      lualine_y = {{'filetype', icon_only = true}, 'progress'},
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    -- top line
    winbar = {
      lualine_a = {},
      lualine_b = {{'filename', path = 3, shorting_target = 16}},
      lualine_c = {},
      lualine_x = {'encoding', 'fileformat'},
      lualine_y = {},
      lualine_z = {}
    },
    inactive_winbar = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
    },
  }
}