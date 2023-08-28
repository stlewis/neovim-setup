local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- [[ File/buffer Handling ]]
  'famiu/bufdelete.nvim', -- buffer delete without closing windows
  'yegappan/mru', -- Simple MRU list
  'kyazdani42/nvim-web-devicons',
  'kyazdani42/nvim-tree.lua', -- Filesystem navigator
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope.nvim', -- Fuzzy Finder
  { 'nvim-telescope/telescope-fzf-native.nvim', build='make'},

  -- [[ Theme ]]
  'mhinz/vim-startify',
  'DanilaMihailov/beacon.nvim',
  'preservim/vim-thematic',
  'nvim-lualine/lualine.nvim',

  -- [[ Colorschemes ]]
  {'ishan9299/nvim-solarized-lua', lazy=false},
  'preservim/vim-colors-pencil',
  'Mofiqul/vscode.nvim',

  -- [[ Syntax Highlighting/Folding etc. ]]
  { 'nvim-treesitter/nvim-treesitter', build=':TsUpdate' },
  'stlewis/vim-inform7',
  'neoclide/vim-jsx-improve',
  'slim-template/vim-slim',

  -- [[ Source Control ]]
  'tpope/vim-fugitive',
  'junegunn/gv.vim',
  'lewis6991/gitsigns.nvim',

-- [[ Brackets and Surroundings ]]
  'tpope/vim-unimpaired',
  'windwp/nvim-autopairs',
  'tpope/vim-surround',

-- [[ Editing]]
  'tpope/vim-repeat', -- Fun dot operator fixes
  'numToStr/Comment.nvim',
  'mg979/vim-visual-multi', -- multicursor

  -- [[ Analysis, Linting, and AI ]]
  'github/copilot.vim', -- AI Coding Assistant
  'dense-analysis/ale', -- Linting

  -- [[ Ruby/Rails & Testing ]]
  'tpope/vim-dispatch',
  'tpope/vim-rails',
  'ngmy/vim-rubocop',

  'antoinemadec/FixCursorHold.nvim',
  'olimorris/neotest-rspec',
  'nvim-neotest/neotest',

  -- [[ Code Completion ]]
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-nvim-lua',
  'hrsh7th/cmp-nvim-lsp',
  'saadparwaiz1/cmp_luasnip',
  'L3MON4D3/LuaSnip', -- snippet engine
  'rafamadriz/friendly-snippets', -- snippets collection

-- [[ Prose Writing ]]
  'Pocco81/true-zen.nvim',
  'preservim/vim-pencil',
  'preservim/vim-litecorrect',
  'kana/vim-textobj-user',
  'preservim/vim-textobj-sentence'
}, { git = { url_format='https://github.com/%s' } })

