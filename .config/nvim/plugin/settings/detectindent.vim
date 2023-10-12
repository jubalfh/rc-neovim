let g:detectindent_preferred_expandtab = 1
let g:detectindent_preferred_indent = 4

augroup detect_indent
    autocmd!
    autocmd BufRead * DetectIndent
augroup END
