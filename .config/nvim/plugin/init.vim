" set some defaults

set nocompatible
set modeline

set noautoread
set autowrite
set autoindent
set smartindent
set breakindent

set backspace=indent,eol,start
set copyindent
set noconfirm
set cpoptions-=aA
if has("nvim")
    set cpoptions+=ceFns
else
    set cpoptions+=ceFgns
endif
set shortmess+=I
set nodigraph
set noerrorbells
set magic

set hidden
set ignorecase
set infercase
set smartcase
set incsearch
set hlsearch

set mouse=a
set mousefocus
set mousehide

set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftround
set shiftwidth=4
set textwidth=71
set ttyfast
set wrap
set nofoldenable
set formatoptions=qrnl1
set colorcolumn=85
set nofixendofline

set scrolloff=2
set laststatus=2
set number
set ruler
set showcmd
set showmatch
set showmode
set wildmenu
set wildmode=list:longest
set wrapscan

set history=1200
set wildignore=*~,*.swp,*.bak,*.pyc,*.class
set title
set visualbell

set list
set listchars=tab:▸\ ,eol:┐

" backups and undo
set backupdir=~/.vim/backup
set backup
set undodir=~/.vim/undo
set undolevels=1200
set undofile
set viewdir=~/.vim/view

" colorschemes and gui
if has('gui_running')
    set guioptions=agk
    set guifont=Iosevka\ Term\ SS07\ 12,Iosevka\ SS07:h12,Iosevka\ SS07:h12:qCLEARTYPE
    set mousehide
endif

set background=dark
colorscheme gruvbox-material
highlight SpecialKey ctermfg=11 ctermbg=8

" load specific configuration
runtime local

" vim: syntax=vim ft=vim
