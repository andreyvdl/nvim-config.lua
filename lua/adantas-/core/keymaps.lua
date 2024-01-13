local options = { noremap = true,
    silent = true
}

local vkeymap = vim.keymap

vkeymap.set("n", "<C-q>", ":q!<CR>", options)
vkeymap.set("n", "<C-s>", ":w<CR>", options)
vkeymap.set("n", "<C-x>", ":x<CR>", options)

-- keep visual after identation
vkeymap.set("v", "<", "<gv")
vkeymap.set("v", ">", ">gv")

-- change buffer focus
vkeymap.set("n", "<leader>bn", ":bn<CR>", options)
vkeymap.set("n", "<leader>bp", ":bp<CR>", options)
