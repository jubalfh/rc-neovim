autocmd filetypedetect BufEnter * if getline(1) =~ "%YAML" | setf yaml | endif
