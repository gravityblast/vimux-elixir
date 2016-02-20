command ElixirTestAll :call ElixirTestAll()
command ElixirTestFile :call ElixirTestFile()
command ElixirTestFocused :call ElixirTestFocused()

function! ShellCommandSeperator()
  if empty(matchstr($SHELL, 'fish'))
    return '&&'
  else
    return '; and'
  endif
endfunction

let s:separator = ShellCommandSeperator()

function! MixCwd()
  return getcwd()
endfunction

function ElixirTestAll()
   call VimuxRunCommand("cd " . MixCwd() . " " . s:separator . " clear " . s:separator . " mix test ")
endfunction

function ElixirTestFile()
   call VimuxRunCommand("cd " . MixCwd() . " " . s:separator . " clear " . s:separator . " mix test " . @%)
endfunction

function ElixirTestFocused()
   call VimuxRunCommand("cd " . MixCwd() . " " . s:separator . " clear " . s:separator . " mix test " . @% . ":" . line("."))
endfunction
