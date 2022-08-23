vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS

require('vars') -- Variables
require('opts') -- Options
require('keys') -- Keymaps
require('plug') -- Plugins
require('completion') -- Completion config
require('commands') -- Autocmds

-- PLUGINS
require('nvim-tree').setup{ view = { side = "right" } }
require('lualine').setup{}
require('nvim-autopairs').setup{}
require('tabline').setup{}

-- Distraction Free Writing Mode
require('true-zen').setup{
  modes = {
    ataraxis = {
      backdrop = 100,
    }
  }
}

-- Telescope configs
local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next
      }
    }
  }
}

-- [[ Treesitter ]]
require('nvim-treesitter.configs').setup {
  ensure_installed = 'all',
  auto_install = true,

  highlight = {
    enable = true

  }
}

