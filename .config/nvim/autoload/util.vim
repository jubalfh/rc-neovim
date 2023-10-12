function! util#CheckFileType()
    if exists("b:countCheck") == 0
        let b:countCheck = 0
    endif
    let b:countCheck += 1
    if &filetype == "" && b:countCheck > 40 && b:countCheck < 200
        filetype detect
    elseif b:countCheck >= 200 || &filetype != ""
        autocmd! newFiletypeDetection
    endif
endfunction
