local options = { noremap = true,
    silent = true
}

local vkeymap = vim.keymap

vkeymap.set({"n", "v"}, "a", "i", options)
vkeymap.set({"n", "v"}, "j", "h", options)
vkeymap.set({"n", "v"}, "i", "k", options)
vkeymap.set({"n", "v"}, "k", "j", options)
vkeymap.set({"n", "v"}, "l", "l", options)

vkeymap.set("n", "<M-j>", "<C-w>h", options)
vkeymap.set("n", "<M-i>", "<C-w>k", options)
vkeymap.set("n", "<M-k>", "<C-w>j", options)
vkeymap.set("n", "<M-l>", "<C-w>l", options)

vkeymap.set("n", "<C-q>", ":q!<CR>", options)
vkeymap.set("n", "<C-s>", ":w<CR>", options)
vkeymap.set("n", "<C-x>", ":x<CR>", options)

-- keep visual after identation
vkeymap.set("v", "<", "<gv")
vkeymap.set("v", ">", ">gv")

-- change buffer focus
vkeymap.set("n", "<leader>bn", ":bn<CR>", options)
vkeymap.set("n", "<leader>bp", ":bp<CR>", options)
