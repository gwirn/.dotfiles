vim.keymap.set("n", "##", "i// <ESC>", { desc = "comment" })
vim.keymap.set("n", "_bc", "i/*<ESC>}i*/<ESC>", { desc = "Comment until new blank line" })
vim.keymap.set("n", "<leader>gd", ":/fn <CR>")
vim.keymap.set("n", "<leader>gs", ":/struct <CR>")
vim.keymap.set("n", "<leader>ge", ":/enum <CR>")

-- Call the function on BufEnter and BufWritePost events
vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
	callback = function()
		Highlight_long_lines(88)
	end,
})
vim.keymap.set("n", "<leader>xx", ":!cargo run %:p<CR>")
