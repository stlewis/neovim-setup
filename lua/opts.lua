local opt = vim.opt
local cmd = vim.api.nvim_command

-- [Context]
opt.number = true -- Show line numbers
opt.relativenumber = true -- Show relative line numbers
opt.scrolloff = 4 -- Min number of lines of context
opt.signcolumn = "yes" -- Show the sign column
opt.showtabline = 2
opt.wrap = false

-- [Filetypes]
opt.encoding = 'utf8'
opt.fileencoding = 'utf8'

-- [[ File Handling ]]
opt.backup = false
opt.clipboard = 'unnamedplus'
opt.swapfile = false
opt.hidden = true
opt.undofile = true

-- [[Theme]]
opt.syntax = 'on' -- Enable syntax highlighting
opt.termguicolors = true -- If the terminal supports them, use GUI colors
opt.visualbell = true

cmd('colorscheme nightfly')

-- [[Search]]
opt.ignorecase = true -- Ignore case in search
opt.smartcase = true -- Override ignore case if the search includes capitals
opt.incsearch = true -- Use incremental search
opt.hlsearch = true -- Highlight search matches

-- [[Whitespace Handling]]

opt.expandtab = true -- Use spaces instead of tabs.
opt.shiftwidth = 2 -- Size of indentation
opt.softtabstop = 2 -- Number of spaces tabs count for in insert mode
opt.tabstop = 2 -- " in normal mode.

-- [[Splits]]

opt.splitright = true -- Place vertical splits to right
opt.splitbelow = true -- Place new horizontal splits to the bottom

-- [[Completion Opts]]
opt.completeopt = { "menu", "menuone", "noselect" }
opt.shortmess:append "c"

