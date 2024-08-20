vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", '""', 'ciw""<ESC>hp', { desc = "sourround word with double quotes" })
vim.keymap.set("n", "''", 'ciw""<ESC>hp', { desc = "sourround word with single quotes" })
vim.keymap.set("n", "<CR><CR>", "o<ESC>", { desc = "insert newline without insert mode" })
vim.keymap.set("n", "vv", '"+p', { desc = "paste from system clipboard" })
vim.keymap.set("n", "ff", ":nohl<CR>", { desc = "clear search highlight" })
vim.keymap.set("i", "(", "()<ESC>i")
vim.keymap.set("i", "{", "{}<ESC>i")
vim.keymap.set("i", "[", "[]<ESC>i")
vim.keymap.set("i", '"', '""<ESC>i')
vim.keymap.set("i", "'", "''<ESC>i")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "J", "mzJ`z", { desc = "move one line below into current line" })
vim.keymap.set("n", "<leader>l", ">>", { desc = "right intend" })
vim.keymap.set("n", "<leader>h", "<<", { desc = "left intend" })
vim.keymap.set("n", "P", ":pu <CR>", { desc = "paste on newline" })
vim.keymap.set("i", "<ESC>", "<ESC>l", { silent = true })
vim.keymap.set("n", "<leader>n", ":bn<CR>", { desc = "go to next buffer" })
vim.keymap.set("n", "<leader>p", ":bp<CR>", { desc = "go to previous buffer" })
-- Keymaps for better default experience
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.keymap.set("n", "<leader>sx", ":w <CR> :source % <CR>", { desc = "source current file" })
vim.keymap.set("t", "<leader><ESC>", "<C-\\><C-N>", { desc = "back to normal mode from terminal", noremap = true })
-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "<C-^>", "<Nop>")

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>x", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
vim.keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "write and quite file" })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "write file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "quit file" })
vim.keymap.set("n", "<leader>fq", ":q!<CR>", { desc = "force quit file" })
vim.keymap.set("n", "<leader>o", ":e ", { desc = "quit file" })

vim.keymap.set("n", "<leader>mu", ":m -", { desc = "move line N lines up" })
vim.keymap.set("n", "<leader>md", ":m +", { desc = "move line N lines down" })
vim.keymap.set("n", "<M-j>", ":m+1<CR>==")
vim.keymap.set("n", "<M-k>", ":m .-2<CR>==")
vim.keymap.set("i", "<M-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<M-k>", "<Esc>:m .-2<CR>==gi")
vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>c", "z=")
vim.keymap.set("v", ",s", ":s/")
vim.keymap.set("n", ",s", "V:s/", { desc = "Substitute in one line" })
vim.keymap.set(
	"n",
	"<leader>r",
	":s/<C-r><C-w>//g<Left><Left>",
	{ desc = "replace word under cursor in current line", noremap = true }
)

vim.keymap.set("i", "<C-w>", "<C-o>w")
vim.keymap.set("i", "<C-b>", "<C-o>b")
vim.keymap.set("i", "<C-r>", "<C-o>p")

vim.keymap.set("n", "<leader>b", function()
	require("poseidon").buffer_nav(1)
end, { desc = "[C]hange between all [B]uffers" })

vim.keymap.set("n", "<leader>f", function()
	require("poseidon").buffer_nav()
end, { desc = "[C]hange between buffers of same [F]iletype" })

vim.keymap.set("n", "<leader>j", function()
	require("artemis").visjump()
end, { desc = "navigate [J]ump list" })

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
vim.api.nvim_create_autocmd("BufWritePre", { pattern = "*", command = [[%s/\s\+$//e]] })
