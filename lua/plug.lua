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

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use { 'kdheepak/tabline.nvim' }
  use { 'qpkorr/vim-bufkill'}

  -- [[ Colorschemes ]]
  use { 'bluz71/vim-nightfly-guicolors' }

  -- [[ Development ]]
  use {
    'nvim-telescope/telescope.nvim',  --fuzzy finder
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use { 'Yggdroot/indentLine' } -- see indentation
  use { 'tpope/vim-fugitive' }  -- git integration
  use { 'junegunn/gv.vim' } -- commit history
  use { 'windwp/nvim-autopairs' } -- auto close brackets
  use { 'tpope/vim-surround' } -- do things with surroundings
  use { 'preservim/nerdcommenter' }
  use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" }
  use { 'terryma/vim-multiple-cursors'} -- multicursor
  --use { 'airblade/vim-gitgutter' } -- git change tracking
  use { 'dense-analysis/ale'} -- Linting
  use { 'yegappan/mru' } -- MRU list
  use { 'stlewis/vim-inform7'} -- Inform7 Syntax highlighting

  -- Rails/Ruby & Testing
  use { 'tpope/vim-dispatch' }
  use { 'stlewis/vim-rails' }
  use { 'janko-m/vim-test' }
  use { 'ngmy/vim-rubocop' }


  -- [[ Completion ]]
  use { 'hrsh7th/nvim-cmp'}
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-nvim-lua'}
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'saadparwaiz1/cmp_luasnip' }

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  -- [[ Prose Writing ]]
  use "Pocco81/true-zen.nvim"
  use "preservim/vim-pencil"
end

return require('packer').startup(fn, cfg)
