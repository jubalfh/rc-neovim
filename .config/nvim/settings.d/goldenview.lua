vim.g.goldenview__ignore_urule = {
    filetype = {
        '',
        'qf',
        'vimpager',
        'undotree',
        'tagbar',
        'nerdtree',
        'vimshell',
        'vimfiler',
        'voom',
        'tabman',
        'unite',
        'quickrun',
        'Decho',
        'ControlP',
        'diff',
        'extradite',
        'netrw',
    },
    buftype = { 'nofile', },
    bufname = {
        'GoToFile',
        'diffpanel_d+',
        '__Gundo_Preview__',
        '__Gundo__',
        '{LustyExplorer-Buffers]',
        '-MiniBufExplorer-',
        '_VOOMd+$',
        '__Urannotate_d+__',
        '__MRU_Files__',
        'FencView_d+$',
    },
}

vim.g.goldenview__restore_urule = {
    filetype = { 'nerdtree', 'vimfiler', 'netrw', },
    bufname ={ '__MRU_Files__', },
}

-- split to tiled windows
vim.cmd([[nmap <silent> <leader>L  <Plug>GoldenViewSplit]])
