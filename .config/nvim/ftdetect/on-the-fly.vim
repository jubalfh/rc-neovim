" Filetype detection on the fly
" we want it in separate augroup
augroup newFiletypeDetection
    autocmd CursorMovedI * call util#CheckFileType()
augroup END
