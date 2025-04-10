vim.keymap.set("n", "##", "i# <ESC>", { desc = "comment" })

-- Call the function on BufEnter and BufWritePost events
vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
	callback = function()
		Highlight_long_lines(88)
	end,
})
vim.keymap.set("n", "<leader>xx", ":!bash %:p<CR>")
