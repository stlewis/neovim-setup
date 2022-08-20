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

-- [[ Treesitter ]]
require('nvim-treesitter.configs').setup {
  ensure_installed = 'all',
  auto_install = true,

  highlight = {
    enable = true

  }
}

