local cmd = vim.cmd

-- Clean up trailing whitespace on save
cmd [[
  autocmd BufWritePre * :%s/\s\+$//e
]]

-- When in insert mode, show absolute line numbers instead of relative
cmd [[
  augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
  augroup END
]]

cmd [[ command! JrnlSettings call JrnlSettings() ]]
cmd [[ command! IFSettings call IFSettings() ]]

cmd [[
  function JrnlSettings()
    set ft=markdown
    set spell
    hi htmlItalic cterm=italic
    hi htmlBold cterm=bold
    :Goyo
  endfunction
]]

cmd [[
  function IFSettings()
    set ft=inform7
    set spell
    hi htmlItalic cterm=htmlItalic
    hi htmlBold cterm=bold
  endfunction
]]

cmd [[
  augroup pencil
    autocmd!
    autocmd FileType markdown call pencil#init({'wrap': 'soft'})
    autocmd FileType markdown call JrnlSettings()
    autocmd FileType text call pencil#init({'wrap': 'soft'})
    autocmd FileType inform7 call pencil#init({'wrap': 'soft'})
    autocmd FileType inform7 call IFSettings()
  augroup END
]] -- Pencil auto file type detection

cmd [[ com! FormatJSON %!python -m json.tool ]] -- Format JSON strings

