return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local opts = {noremap = true, silent = true}
		local keymap = vim.keymap
		local builtin = require("telescope.builtin")

		keymap.set("n", "<leader>ff", builtin.find_files, opts)
		keymap.set("n", "<leader>fb", builtin.buffers, opts)
	end,
}
