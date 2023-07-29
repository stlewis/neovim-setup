local g = vim.g
local e = vim.api.nvim_exec

g.t_co = 256
g.background = "dark"

-- Don't let startify change the working directory
e([[let g:startify_change_to_dir = 0]], true)

-- Pencil Vars
e([[
  let pencil#autoformat=1
  let g:pencil#textwidth=80
  let g:pencil_terminal_italics = 1
]], true)

-- ALE Linters
e([[
  let g:ale_linters = { 'typescript': ['prettier', 'eslint'], 'typescriptreact': ['prettier', 'eslint']}
]], true)

-- ALE Fixers
e([[
  let g:ale_fixers = { 'ruby': ['rubocop'], 'typescript': ['prettier', 'eslint'], 'typescriptreact': ['prettier', 'eslint'] }
  let g:ale_fix_on_save = 0
]], true)

-- ALE Config
e([[
  let g:ale_floating_preview = 1
  let g:ale_virtualtext_cursor = 0
]], true)

-- Update the packpath
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path
