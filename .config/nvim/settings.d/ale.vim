let g:ale_sh_bashate_options = '-i E003,E006,E043'
let g:ale_linters = {
    \ 'sh': ['language_server', 'shellcheck', 'bashate'],
    \ }
