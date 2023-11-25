local options = { noremap = true,
    silent = true
}

vim.keymap.set("n", "j", "h", options)
vim.keymap.set("n", "i", "k", options)
vim.keymap.set("n", "k", "j", options)
vim.keymap.set("n", "l", "l", options)

vim.keymap.set("n", "<M-a>", "<C-w>h", options)
vim.keymap.set("n", "<M-w>", "<C-w>k", options)
vim.keymap.set("n", "<M-s>", "<C-w>j", options)
vim.keymap.set("n", "<M-d>", "<C-w>l", options)

vim.keymap.set("n", "<C-q>", ":q!<CR>", options)
vim.keymap.set("n", "<C-s>", ":w<CR>", options)
vim.keymap.set("n", "<C-x>", ":x<CR>", options)
