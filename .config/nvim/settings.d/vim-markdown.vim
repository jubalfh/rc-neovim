" zen-mode for markdown
" note: a workaround for a fragile behaviour, cf.:
" https://github.com/folke/zen-mode.nvim/issues/51
augroup vim_markdown
    autocmd!
    autocmd VimEnter *.md :ZenMode
augroup END
