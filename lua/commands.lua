local cmd = vim.cmd
local api = vim.api

-- Clean up trailing whitespace on save
cmd [[
  autocmd BufWritePre * :%s/\s\+$//e
]]

-- When in insert mode, show absolute line numbers instead of relative
api.nvim_create_augroup("numbertoggle", { clear = true })

api.nvim_create_autocmd({"BufEnter", "FocusGained", "InsertLeave", "WinEnter"}, { group = "numbertoggle", command = "if  &nu | set rnu | endif"})
api.nvim_create_autocmd({"BufLeave", "FocusLost", "InsertEnter", "WinLeave"}, { group = "numbertoggle", command = "if  &nu | set nornu | endif"})

-- File type setting commands
cmd [[ command! JrnlSettings call JrnlSettings() ]]
cmd [[ command! IFSettings call IFSettings() ]]

cmd [[
  function JrnlSettings()
    :TZAtaraxis
    :Thematic prose
    set ft=markdown
    set spell
  endfunction
]]

cmd [[
  function IFSettings()
    set ft=inform7
    set spell
  endfunction
]]

cmd [[
  augroup pencil
    autocmd!
    autocmd FileType markdown call pencil#init({'wrap': 'soft'})
                                   \ | call litecorrect#init()
                                   \ | call textobj#sentence#init()
                                   \ | call JrnlSettings()
    autocmd FileType jrnl call JrnlSettings()
    autocmd FileType text call pencil#init({'wrap': 'soft'})
    autocmd FileType inform7 call pencil#init({'wrap': 'soft'})
    autocmd FileType inform7 call IFSettings()

    autocmd BufEnter,BufNew *.jrnl call pencil#init({'wrap': 'soft'})
    autocmd BufEnter,BufNew *.jrnl call JrnlSettings()
  augroup END
]] -- Pencil auto file type detection

cmd [[ com! FormatJSON %!python -m json.tool ]] -- Format JSON strings
cmd [[ com! BD :BufferClose ]]

