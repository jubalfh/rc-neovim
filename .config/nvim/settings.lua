-- set some defaults

vim.opt.termguicolors = true
vim.opt.modeline = true

vim.opt.autoread = false
vim.opt.autowrite = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true

vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.copyindent = true
vim.opt.confirm = false
vim.opt.cpoptions:remove({ "a", "A" })
vim.opt.cpoptions:append({ c = true, e = true, F = true, n = true })
vim.opt.shortmess:append({ I = true })
vim.opt.digraph = false
vim.opt.errorbells = false
vim.opt.magic = true

vim.opt.hidden = true
vim.opt.ignorecase = true
vim.opt.infercase = true
vim.opt.smartcase = true

vim.opt.mouse = "a"
vim.opt.mousefocus = true
vim.opt.mousehide = true

vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftround = true
vim.opt.shiftwidth = 4
vim.opt.textwidth = 71
vim.opt.wrap = true
vim.opt.foldenable = false
vim.opt.formatoptions = "qrnlj1tc"
vim.opt.colorcolumn = { 85 }
vim.opt.fixendofline = false

vim.opt.number = true
vim.opt.showmatch = true
vim.opt.showmode = true
vim.opt.wrapscan = true

vim.opt.wildignore = { "*~", "*.swp", "*.bak", "*.pyc", "*.class" }
vim.opt.title = true
vim.opt.visualbell = true

vim.opt.list = true
-- vim.opt.listchars = { tab='▸ ', eol = '┐' }

-- backups and undo
vim.opt.backupdir = vim.fn.stdpath("state") .. "/backup//"
vim.opt.backup = true
vim.opt.undolevels = 1200
vim.opt.undofile = true

-- vim.cmd([[highlight SpecialKey ctermfg=11 ctermbg=8]])
