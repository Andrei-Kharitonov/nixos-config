-- Start screen
return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      shortcut_type = 'number',
      hide = {
        statusline = false,
        tabline = true,
        winbar = true
      },
      config = {
        shortcut = {
          {
            icon = ' ',
            icon_hl = '@variable',
            desc = 'Files',
            group = 'Label',
            action = 'Telescope find_files',
            key = 'f',
          },
          {
            icon = ' ',
            icon_hl = '@property',
            desc = 'Projects',
            group = 'Label',
            action = 'Telescope projects',
            key = 'p',
          },
        },
        packages = { enable = false },
        project = { enable = false, limit = 4, icon = 'Projects', label = '', action = 'Telescope projects cwd=~' },
        mru = { enable = true, limit = 9, icon = 'Recent files', label = '', cwd_only = true },
        footer = {},
      }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}