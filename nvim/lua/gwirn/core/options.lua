local opt = vim.o
-- Set highlight on search
opt.hlsearch = true

-- Make line numbers default
opt.relativenumber = true
opt.number = true

opt.clipboard = "unnamedplus"

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Decrease update time
opt.updatetime = 250
opt.timeout = true
opt.timeoutlen = 300

-- Set completeopt to have a better completion experience
opt.completeopt = "menuone"
opt.termguicolors = true
opt.nocompatible = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.nowrap = true
opt.autoindent = true
opt.expandtab = true
opt.exrc = true
opt.secure = true
opt.showcmd = true
opt.showmode = true
opt.splitright = true
opt.foldlevel = 99
opt.wildmenu = true
opt.history = 1000
opt.cursorline = true
opt.updatetime = 1
opt.scrolloff = 40

opt.pumblend = 17
opt.inccommand = "split"
opt.hidden = false
opt.smoothscroll = true
opt.belloff = "all"
opt.mouse = "a"
vim.cmd(":set guicursor=n-v-c-i-ci:ver25,r-cr:hor20,o:hor50")
-- vim.cmd(":hi clear CursorLine")
-- vim.cmd(":hi CursorLine gui=underline cterm=underline guifg=None")
