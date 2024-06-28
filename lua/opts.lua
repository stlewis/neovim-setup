local opt = vim.opt
local cmd = vim.api.nvim_command

-- [Context]
opt.number = true -- Show line numbers
opt.relativenumber = true -- Show relative line numbers
opt.scrolloff = 4 -- Min number of lines of context
opt.signcolumn = "yes" -- Show the sign column
opt.showtabline = 0 -- Never show the tabline
opt.wrap = false -- Don't wrap lines
opt.concealcursor = 'n' -- Don't maintain conceal markers in insert mode
opt.conceallevel = 3
opt.mouse = 'a'
opt.formatoptions:remove({ 'o' }) -- Don't insert comment leader on <Enter>

-- [ Code Folding ]
opt.foldmethod = 'expr'
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 99999


-- [Filetypes]
opt.encoding = 'utf8'
opt.fileencoding = 'utf8'

-- [[ File Handling ]]
opt.backup = false -- Don't create a backup file
opt.clipboard = 'unnamedplus' -- Allow interoperability with system clipboard
opt.swapfile = false -- Don't use a swapfile
opt.hidden = true -- Allow unsaved buffers to be hidden
opt.undofile = true -- Use an undo file for persistent undo

-- [[Theme]]
opt.syntax = 'on' -- Enable syntax highlighting
opt.termguicolors = true -- If the terminal supports them, use GUI colors
opt.visualbell = true -- Show a visual indicator instead of an audible error bell

cmd('colorscheme deep-space') -- Pick the colorscheme

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

-- VimDiff
cmd([[ set diffopt+=internal,algorithm:patience ]])
opt.readonly = false

