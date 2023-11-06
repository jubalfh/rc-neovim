" general autocommands

" autosave on focus lost
augroup autosave_on_lost_focus
    autocmd!
    autocmd FocusLost ?* wa
augroup END
