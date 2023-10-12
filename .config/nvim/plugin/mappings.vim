" generic mappings

let g:mapleader = "\<Space>\<Space>"

nnoremap <silent> <leader><space> :noh<cr>
nnoremap <silent> <leader>sv :source $MYVIMRC<cr>
nnoremap <silent> <leader>w! :write !sudo tee % >/dev/null<cr><cr>
nnoremap <silent> <leader>te :set expandtab!<cr>

nnoremap <silent> <down> <nop>
nnoremap <silent> <up> <nop>
nnoremap <silent> <left> <nop>
nnoremap <silent> <right> <nop>

nnoremap <silent> j gj
nnoremap <silent> k gk

if &readonly
    nnoremap <silent> <esc> <esc><esc>:qa!<cr>
endif
