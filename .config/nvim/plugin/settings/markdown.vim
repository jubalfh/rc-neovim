" some settings for vim-markdown

augroup vim_markdown
    autocmd!
    autocmd filetype markdown setlocal nocursorline
    autocmd filetype markdown setlocal nocursorcolumn
    autocmd filetype markdown setlocal linebreak
    autocmd filetype markdown setlocal formatoptions-=t
    autocmd filetype markdown set lcs=
    autocmd filetype markdown Goyo 85%+4%x80%
augroup END

let g:markdown_enable_spell_checking = 0
let g:vim_markdown_autowrite = 1
let g:vim_markdown_conceal = 1
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_edit_url_in = 'vsplit'
let g:vim_markdown_enable_conceal = 0
let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_math = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_toml_frontmatter = 1
