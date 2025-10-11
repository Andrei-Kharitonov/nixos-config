-- Status line
return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  opts = {
    options = {
      disabled_filetypes = {
        winbar = {'neo-tree', 'dashboard'}
      },
    },
    -- bottom line
    sections = {
      lualine_a = {
        {'mode', cond = function() return vim.bo.filetype ~= 'neo-tree' end}
      },
      lualine_b = {
        'branch',
        {'diff', cond = function() return vim.bo.filetype ~= 'neo-tree' end}
      },
      lualine_c = {
        {'diagnostics', cond = function() return vim.bo.filetype ~= 'neo-tree' end}
      },
      lualine_x = {
        {'searchcount', cond = function() return vim.bo.filetype ~= 'neo-tree' end}
      },
      lualine_y = {
        {'filetype', icon_only = true, cond = function() return vim.bo.filetype ~= 'neo-tree' end},
        {'progress', cond = function() return vim.bo.filetype ~= 'neo-tree' end}
      },
      lualine_z = {
        {'location', cond = function() return vim.bo.filetype ~= 'neo-tree' end}
      }
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {
        {'diagnostics', cond = function() return vim.bo.filetype ~= 'neo-tree' end}
      },
      lualine_x = {
        {'location', cond = function() return vim.bo.filetype ~= 'neo-tree' end}
      },
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
      lualine_c = {{'filename', path = 3, shorting_target = 16}},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
    }
  }
}