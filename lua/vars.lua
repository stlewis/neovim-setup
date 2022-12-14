local g = vim.g
local e = vim.api.nvim_exec

g.t_co = 256
g.background = "dark"

-- Don't let startify change the working directory
e([[let g:startify_change_to_dir = 0]], true)

-- Testing Ruby uses Dispatch
e([[let test#strategy = 'neoterm']], true)
e([[let g:test#neovim#start_normal = 1]], true)

-- Neoterm settings
e([[let g:neoterm_default_mod = 'botright']], true) -- neoterm in a vert split
e([[let g:neoterm_autoscroll= 1]], true) -- Always scroll to the bottom of the neoterm window when opening or executing a command
e([[let g:neoterm_keep_term_open= 0]], true) -- Always don't maintain a hidden term buffer

-- Pencil Vars
e([[
  let pencil#autoformat=1
  let g:pencil#textwidth=80
  let g:pencil_terminal_italics = 1
]], true)

-- ALE Linters
e([[
  let g:ale_linters = { 'typescript': ['prettier'], 'typescriptreact': ['prettier']}
]], true)
-- ALE Fixers
e([[
  let g:ale_fixers = { 'ruby': ['rubocop'], 'typescript': ['prettier'], 'typescriptreact': ['prettier'] }
  let g:ale_fix_on_save = 1
]], true)

-- Update the packpath
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path
