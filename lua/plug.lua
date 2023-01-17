cfg = {
  package_root = vim.fn.stdpath('config') .. '/site/pack'
}

fn = function(use)
  -- [[ Plugins Go Here ]]
  use {
    'kyazdani42/nvim-tree.lua', -- Filesystem navigator
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- [[ Theme ]]
  use { 'mhinz/vim-startify' }
  use { 'DanilaMihailov/beacon.nvim' }
  use "preservim/vim-thematic"

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- [[ Colorschemes ]]
  use { 'bluz71/vim-nightfly-guicolors' } -- nightfly
  use { 'kyazdani42/blue-moon'} -- blue-moon
  use { 'ellisonleao/gruvbox.nvim'} -- gruvbox
  use { 'andersevenrud/nordic.nvim' } -- nordic
  use { 'ishan9299/nvim-solarized-lua'} -- solarized
  use { 'sainnhe/edge' } -- edge
  use { 'sainnhe/sonokai' } -- sonokai
  use { 'preservim/vim-colors-pencil' }
  use { 'EdenEast/nightfox.nvim' }
  use { 'ful1e5/onedark.nvim' }
  use { 'lunarvim/Onedarker.nvim' }
  use { 'Mofiqul/vscode.nvim' }


  -- [[ Development ]]
  use {
    'nvim-telescope/telescope.nvim',  --fuzzy finder
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- Native sorter


  use { 'tpope/vim-fugitive' }  -- git integration
  use { 'tpope/vim-unimpaired' } -- handy bracket commands
  use { 'junegunn/gv.vim' } -- commit history
  use { 'windwp/nvim-autopairs' } -- auto close brackets
  use { 'tpope/vim-surround' } -- do things with surroundings
  use { 'tpope/vim-repeat' } -- do things with the dot operator
  use { 'preservim/nerdcommenter' }
  use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" }
  use { 'terryma/vim-multiple-cursors'} -- multicursor
  --use { 'airblade/vim-gitgutter' } -- git change tracking
  use { 'dense-analysis/ale'} -- Linting
  use { 'yegappan/mru' } -- MRU list
  use { 'stlewis/vim-inform7'} -- Inform7 Syntax highlighting
  use { 'neoclide/vim-jsx-improve'}

  -- Rails/Ruby & Testing
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

  -- Terminal Stuff
  use { 'kassio/neoterm' }

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

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
