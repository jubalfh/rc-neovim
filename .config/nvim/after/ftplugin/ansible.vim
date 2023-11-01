" some settings for yaml files

augroup yaml_ansible_files
    autocmd!
    autocmd filetype ansible setlocal sts=2 ts=2
    autocmd filetype ansible setlocal foldmethod=indent
augroup END
