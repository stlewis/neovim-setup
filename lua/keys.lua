local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Toggle nvim tree
map('n', '<F2>', [[:NvimTreeToggle<CR>]], {})

-- Nvim Terminal mode switch with escape
map('t', '<Esc>', '<C-\\><C-n>', opts)
map('n', '<leader>q',  ':Tclose<CR>', opts)

-- Telescope (fuzzy finder)
map('n', '<leader>t', [[:Telescope find_files<CR>]], {})
map('n', '<leader>g', [[:Telescope live_grep<CR>]], {})

-- Better window navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Let arrow keys do something useful
map('n', '<Right>', [[:vertical resize +5<CR>]], {})
map('n', '<Left>', [[:vertical resize -5<CR>]], {})
map('n', '<Down>', [[:resize +5<CR>]], {})
map('n', '<Up>', [[:resize -5<CR>]], {})

-- Navigate Buffers
map('n', 'gt', [[:BufferNext<CR>]], opts)
map('n', 'gT', [[:BufferPrevious<CR>]], opts)

-- Minor tweaks
--map('n', ';', ':', opts) -- default to a colon when hitting ; in normal mode
map('n', 'q:', ':q', { noremap = true }) -- Stop that stupid window from popping up.
map('n', '/<CR>', ':let @/=""<CR>', { noremap = true })

-- [[ Editor Tweaks ]]
-- Make it possible to tab over blocks continuously
map('v', '>', '>gv', {})
map('v', '<', '<gv', {})

-- Don't replace copy buffer with pasted over contents
map('v', 'p', '"_dP', {})

-- Test Runners
map('n', '<leader>s', [[:wall<CR>:Tclear<CR>:TestNearest<CR>]], opts)
map('n', '<leader>S', [[:wall<CR>:Tclear<CR>:TestFile<CR>]], opts)

-- ALE Fix
map('n', '<leader>f', [[:ALEFix<CR>]], opts)
