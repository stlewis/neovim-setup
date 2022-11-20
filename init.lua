local map = vim.api.nvim_set_keymap

map('n', '<Space>', '<Nop>', {})
vim.g.mapleader = " "
vim.g.localleader = "\\"

-- IMPORTS

require('vars') -- Variables
require('opts') -- Options
require('keys') -- Keymaps
require('plug') -- Plugins
require('completion') -- Completion config
require('commands') -- Autocmds
require('thematic_themes') -- Theme definitions

-- PLUGINS
require('nvim-tree').setup{ view = { side = "right", relativenumber = true } }
require('lualine').setup{}
require('nvim-autopairs').setup{}

-- Distraction Free Writing Mode
require('true-zen').setup{
  modes = {
    ataraxis = {
      backdrop = 0.75,
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

-- Startify
vim.g.startify_lists = {
  { type = 'dir', header = { '   MRU ' .. vim.fn.getcwd() .. ':' }  },
  { type = 'files', header = { '   MRU' } },
  { type = 'sessions', header = { '   Sessions' } },
  { type = 'bookmarks', header = { '   Bookmarks' } },
  { type = 'commands', header = { '   Commands' } }
}

local has_eo = os.execute('command -v eomotd')

if has_eo == 0 then
  vim.g.startify_custom_header = "startify#pad(split(system('eomotd'), '\n'))"
end
