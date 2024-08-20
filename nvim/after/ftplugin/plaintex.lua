vim.cmd("colorscheme kanagawa-lotus")
-- vim.keymap.set("i", ".", ". <ESC>x$o<ESC>i", { desc = "add new line after point" })
vim.cmd("set spell")
vim.keymap.set("n", "##", "i% <ESC>", { desc = "comment" })

vim.keymap.set("i", '"', '"')
vim.keymap.set("i", "'", "'")
vim.o.tw = 200
vim.keymap.set("n", "<leader>xx", ":!pdflatex %:p:r<CR>")
vim.keymap.set("n", "<leader>xo", ":!open %:p:r.pdf<CR>")
vim.cmd("highlight Cursor guifg=darkgreen guibg=grey")
vim.cmd("highlight iCursor guifg=darkgrey guibg=orange")
vim.cmd("set guicursor+=n-v-c:block-Cursor")
vim.cmd("set guicursor+=i:ver200-iCursor")
