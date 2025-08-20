vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", '""', 'ciw""<ESC>hp', { desc = "sourround word with double quotes" })
vim.keymap.set("n", "''", "ciw''<ESC>hp", { desc = "sourround word with single quotes" })
vim.keymap.set("n", "ff", ":nohl<CR>", { desc = "clear search highlight" })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "J", "mzJ`z", { desc = "move one line below into current line" })
vim.keymap.set("n", "<leader>l", ">>", { desc = "right intend" })
vim.keymap.set("n", "<leader>h", "<<", { desc = "left intend" })
vim.keymap.set("i", "<ESC>", "<ESC>l", { silent = true })
vim.keymap.set("n", "<leader>n", ":bn<CR>", { desc = "go to next buffer" })
vim.keymap.set("n", "<leader>p", ":bp<CR>", { desc = "go to previous buffer" })
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "<C-^>", "<Nop>")

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
vim.keymap.set("n", "<leader>q", "<C-w>p:q <CR>", { desc = "close quick fix list from buffer" })

vim.keymap.set("n", "<M-j>", ":m+1<CR>==")
vim.keymap.set("n", "<M-k>", ":m .-2<CR>==")
vim.keymap.set("i", "<M-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<M-k>", "<Esc>:m .-2<CR>==gi")
vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "[G]o [D]efinition" })
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "[G]o [I]mplementation" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setqflist, { desc = "Diagnostics in [Q]uick fix list" })
vim.keymap.set("n", "<leader>cq", ":cclose<CR>", { desc = "Close [Q]uick fix list" })

--vim.keymap.set("n", "<leader>b", function()
--	require("poseidon").buffer_nav(1)
--end, { desc = "[C]hange between all [B]uffers" })

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
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        vim.lsp.buf.format()
    end,
})
