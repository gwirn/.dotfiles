-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.o.relativenumber = true

vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone'
vim.o.termguicolors = true
vim.o.nocompatible = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.tabstop=4
vim.o.shiftwidth=4
vim.o.softtabstop=4
vim.o.nowrap=true
vim.o.autoindent=true
vim.o.expandtab=true
vim.o.exrc=true
vim.o.secure=true
vim.o.showcmd=true
vim.o.showmode=true
vim.o.splitright=true
vim.o.foldlevel=99
vim.o.wildmenu=true
vim.o.history=1000
vim.o.cursorline=true
vim.o.updatetime=1
vim.o.scrolloff=40
vim.cmd(':set guicursor=n-v-c-i-ci:ver25,r-cr:hor20,o:hor50')
