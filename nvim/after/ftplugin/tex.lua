vim.cmd("colorscheme kanagawa-lotus")
vim.keymap.set("i", ".", ". <ESC>x$o<ESC>i", { desc = "add new line after point" })
vim.cmd("set spell")
vim.keymap.set("n", "##", "i% <ESC>", { desc = "comment" })
