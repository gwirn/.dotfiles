vim.keymap.set("n", "##", "i-- <ESC>", { desc = "comment" })
vim.keymap.set("n", "_bc", "i--[[<ESC>}i--]]<ESC>", { desc = "Comment until new blank line" })
