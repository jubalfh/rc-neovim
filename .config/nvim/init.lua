-- “containment is not a feasible operation” – dr keiji fukuda

-- apply old-style settings
vim.g.mapleader = "  "
vim.cmd([[
    runtime settings.lua
    runtime! settings.d/**
]])

-- bootstrap lazy (lazy bootstrap)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

-- plugins
require("lazy").setup("plugins")
