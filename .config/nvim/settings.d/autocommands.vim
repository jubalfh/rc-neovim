" assorted autocommands

" inactive buffers should not add to visual noise
augroup unclutter_inactive_buffers
    autocmd!
    autocmd BufEnter * :IBLEnableBuffer
    autocmd BufLeave * :IBLDisableBuffer
augroup END

" disable swap, backups and undo tree for (mostly) secrets
augroup handle_secrets_securely
    autocmd!
    autocmd BufNewFile,BufRead /dev/shm/gopass.* setlocal noswapfile nobackup noundofile
augroup END

" disable ALE for specific filetypes
augroup ale_disabled
    autocmd!
    autocmd FileType sh,python let b:ale_enabled = 0
augroup END

" detect indent on buffer read
augroup detect_indent
    autocmd!
    autocmd BufRead * DetectIndent
augroup END

" enable zen-mode for markdown
" note: a workaround for a fragile behaviour, cf.:
" https://github.com/folke/zen-mode.nvim/issues/51
augroup vim_markdown
    autocmd!
    autocmd VimEnter *.md :ZenMode
augroup END
