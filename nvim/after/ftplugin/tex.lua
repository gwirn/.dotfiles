vim.cmd("colorscheme kanagawa-lotus")
vim.keymap.set("i", ".", ". <ESC>x$o<ESC>i", { desc = "add new line after point" })
vim.cmd("set spell")
vim.keymap.set("n", "##", "i% <ESC>", { desc = "comment" })

-- Call the function on BufEnter and BufWritePost events
vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
	callback = function()
		Highlight_long_lines(88)
	end,
})
