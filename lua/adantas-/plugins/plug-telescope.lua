return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"BurntSushi/ripgrep",
		"nvim-tree/nvim-web-devicons",
		"sharkdp/fd"
	},
	config = function()
		local opts = {noremap = true, silent = true}
		local keymap = vim.keymap
		local builtin = require("telescope.builtin")

		keymap.set("n", "<leader>ptf", builtin.find_files, opts)
		keymap.set("n", "<leader>ptg", builtin.live_grep, opts)
		keymap.set("n", "<leader>ptb", builtin.buffers, opts)
	end,
}
