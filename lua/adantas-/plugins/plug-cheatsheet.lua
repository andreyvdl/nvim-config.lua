
	"sudormrfbin/cheatsheet.nvim",
	dependencies = {"nvim-telescope/telescope.nvim",
		"nvim-lua/popup.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local keymap = vim.keymap
		local opts = {noremap = true, silent = true}

		keymap.set("n", "<leader>help", ":Cheatsheet<CR>", opts)
	end,
}
