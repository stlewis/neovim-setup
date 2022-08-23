local g = vim.g
local e = vim.api.nvim_exec
local var = vim.api.nvim_set_var

g.t_co = 256
g.background = "dark"

-- Don't let startify change the working directory
--var('g:startify_change_to_dir', 0)
e([[let g:startify_change_to_dir = 0]], true)

-- Testing Ruby uses Dispatch
e([[let test#strategy = 'dispatch']], true)

-- Pencil Vars

e([[
  let pencil#autoformat=1
  let g:pencil#textwidth=80
  let g:pencil_terminal_italics = 1
]], true)

-- Update the packpath
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path
