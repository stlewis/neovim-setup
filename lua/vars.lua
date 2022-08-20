local g = vim.g
local e = vim.api.nvim_exec

g.t_co = 256
g.background = "dark"

-- Testing Ruby uses Dispatch
e([[ let test#strategy = "dispatch" ]], true)

-- Pencil Vars
e([[
  let pencil#autoformat=1
  let g:pencil#textwidth=80
  let g:pencil_terminal_italics = 1
]], true)

-- Update the packpath
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path
