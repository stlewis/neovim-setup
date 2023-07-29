cfg = {
  package_root = vim.fn.stdpath('config') .. '/site/pack'
}
--
fn = function(use)
  -- [[ Plugins Go Here ]]

  -- [[ File/Buffer Handling ]]
  use 'famiu/bufdelete.nvim' -- Delete buffers without closing windows
  use { 'yegappan/mru' } -- MRU list

  use {
    'kyazdani42/nvim-tree.lua', -- Filesystem navigator
    requires = 'kyazdani42/nvim-web-devicons'
  }

  use {
    'nvim-telescope/telescope.nvim',  --fuzzy finder
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- Native sorter



  -- [[ Theme ]]
  use { 'mhinz/vim-startify' }
  use { 'DanilaMihailov/beacon.nvim' } -- highlight cursor after moving
  use "preservim/vim-thematic" -- bundle theme options

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  } -- status line hotness



  -- [[ Colorschemes ]]
  use { 'ishan9299/nvim-solarized-lua'}
  use { 'preservim/vim-colors-pencil' } -- for prose writing
  use { 'Mofiqul/vscode.nvim' }



  -- [[ Syntax Highlighting/Folding etc. ]]
  use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" }
  use { 'stlewis/vim-inform7'} -- Inform7 Syntax highlighting
  use { 'neoclide/vim-jsx-improve'}
  use { 'slim-template/vim-slim' } -- Slim highlighting


  -- [[ Source Control ]]
  use { 'tpope/vim-fugitive' }  -- git integration
  use { 'junegunn/gv.vim' } -- commit history

  -- [[ Bracket and surroundings handling ]]
  use { 'tpope/vim-unimpaired' } -- handy bracket commands
  use { 'windwp/nvim-autopairs' } -- auto close brackets
  use { 'tpope/vim-surround' } -- do things with surroundings

  -- [[ Editing ]]
  use { 'tpope/vim-repeat' } -- do things with the dot operator
  use { 'numToStr/Comment.nvim' }
  use { 'mg979/vim-visual-multi'} -- multicursor

  -- [[ Analysis Linting and AI ]]
  use { 'github/copilot.vim'} -- AI coding assistant
  use { 'dense-analysis/ale'} -- Linting


  -- [[ Rails/Ruby & Testing ]]
  use { 'tpope/vim-dispatch' }
  use { 'tpope/vim-rails' }
  use { 'vim-test/vim-test' }
  use { 'ngmy/vim-rubocop' }


  -- [[ Completion ]]
  use { 'hrsh7th/nvim-cmp'}
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-nvim-lua'}
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'saadparwaiz1/cmp_luasnip' }
  use "L3MON4D3/LuaSnip" -- snippet engine
  use "rafamadriz/friendly-snippets" -- snippets collection

  -- [[ Built In Terminal ]]
  use { 'kassio/neoterm' }


  -- [[ Prose Writing ]]
  use "Pocco81/true-zen.nvim"
  use "preservim/vim-pencil"
  use "preservim/vim-litecorrect"

  use {
    'preservim/vim-textobj-sentence',
    requires = { { 'kana/vim-textobj-user' } }
  }
end

return require('packer').startup(fn, cfg)
