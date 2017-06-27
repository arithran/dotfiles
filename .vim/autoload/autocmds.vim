let g:WincentColorColumnBlacklist = ['diff', 'undotree', 'nerdtree', 'qf', 'tagbar']

function! autocmds#should_colorcolumn() abort
  return index(g:WincentColorColumnBlacklist, &filetype) == -1
endfunction
