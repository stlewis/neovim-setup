local map = vim.api.nvim_set_keymap

map('n', '<Space>', '<Nop>', {})
vim.g.mapleader = " "
vim.g.localleader = "\\"

-- IMPORTS

require('plug') -- Plugins
require('vars') -- Variables
require('opts') -- Options
require('keys') -- Keymaps
require('completion') -- Completion config
require('commands') -- Autocmds
require('thematic_themes') -- Theme definitions

-- PLUGINS
require('nvim-tree').setup{ view = { side = "right", relativenumber = true,  width = 60 } }
require('lualine').setup{

  sections = {
    lualine_c = {
      { 'filename',  path = 1}
    }
  }
}

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
  auto_install = true,
  ensure_installed = { "lua", "ruby", "javascript", "typescript", "html", "css", "json", "graphql" },
  highlight = { enable = true},
  indent = { enable = true }
}

-- Startify
vim.g.startify_lists = {
  { type = 'dir', header = { '   MRU ' .. vim.fn.getcwd() .. ':' }  },
  { type = 'files', header = { '   MRU' } },
  { type = 'sessions', header = { '   Sessions' } },
  { type = 'bookmarks', header = { '   Bookmarks' } },
  { type = 'commands', header = { '   Commands' } }
}

-- Commenter
require('Comment').setup()

-- Git Signs
require('gitsigns').setup()

-- NeoTest
require('neotest').setup({
  adapters = {
    require('neotest-rspec')
  }
})

-- nvim-cmp
local cmp = require('cmp')
cmp.setup({
  completion = {
    completeopt = 'menu,menuone,preview,noselect'
  },
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end
  },

  mapping = cmp.mapping.preset.insert({
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm({ select = true })
  }),
  sources = cmp.config.sources({
    { name = 'buffer' },
    { name = 'vsnip' },
    { name = 'nvim_lsp' },
    { name = 'path' }
  })
})

-- LSP/Mason
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

mason.setup(
  {
    ui = {
      icons = {
        package_installed = "",
        package_pending = "",
        package_uninstalled = ""
      }
    }  -- your mason setup
  }
)

mason_lspconfig.setup({
  ensure_installed = {
    "html",
    "graphql",
    "jsonls",
    "ruby_lsp",
    "rubocop",
  },
  automatic_installation = true
})

local lspconfig = require('lspconfig')
local cmp_nvim_lsp = require('cmp_nvim_lsp')



local has_eo = os.execute('command -v eomotd')

if has_eo == 0 then
  vim.g.startify_custom_header = "startify#pad(split(system('eomotd'), '\n'))"
end
