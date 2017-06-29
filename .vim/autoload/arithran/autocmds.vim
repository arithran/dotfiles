let g:WincentColorColumnBlacklist = ['diff', 'undotree', 'nerdtree', 'qf', 'tagbar']

function! arithran#autocmds#should_colorcolumn() abort
  return index(g:WincentColorColumnBlacklist, &filetype) == -1
endfunction

function! arithran#autocmds#attempt_select_last_file() abort
  let l:previous=expand('#:t')
  if l:previous !=# ''
    call search('\v<' . l:previous . '>')
  endif
endfunction
