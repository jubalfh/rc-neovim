" gopass
augroup gopass_secrets
    autocmd!
    autocmd BufNewFile,BufRead /dev/shm/gopass.* setlocal noswapfile nobackup noundofile
augroup END

