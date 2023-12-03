return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		local nvimtree = require("nvim-tree")
		-- disable netrw at the very start of your init.lua
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- set termguicolors to enable highlight groups
		vim.opt.termguicolors = true
		vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])
		nvimtree.setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = false,
			},
		})

		--key maps
		local keymap = vim.keymap
		local opts = {noremap = true, silent = true}

		keymap.set("n", "<leader>pntt", ":NvimTreeToggle<CR>", opts)
		keymap.set("n", "<leader>pntc", ":NvimTreeClose<CR>", opts)
		keymap.set("n", "<leader>pntf", ":NvimTreeFocus<CR>", opts)
		keymap.set("n", "<leader>pntr", ":NvimTreeRefresh<CR>", opts)
	end,
}
