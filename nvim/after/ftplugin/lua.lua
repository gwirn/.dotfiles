vim.keymap.set("n", "##", "i-- <ESC>", { desc = "comment" })
vim.keymap.set("n", "_bc", "i--[[<ESC>}i--]]<ESC>", { desc = "Comment until new blank line" })

-- Call the function on BufEnter and BufWritePost events
vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
	callback = function()
		Highlight_long_lines(88)
	end,
})
