vim.keymap.set("n", "##", "i// <ESC>", { desc = "comment" })
vim.keymap.set("n", "_bc", "i/*<ESC>}i*/<ESC>", { desc = "Comment until new blank line" })
vim.keymap.set("n", "<leader>gd", ":/fn <CR>")
vim.keymap.set("n", "<leader>gs", ":/struct <CR>")
vim.keymap.set("n", "<leader>ge", ":/enum <CR>")
