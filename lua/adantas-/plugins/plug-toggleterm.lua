return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup()
		local keymap = vim.keymap
		local opts = {noremap = true, silent = true}

		keymap.set("n", "<leader><CR>", ":ToggleTerm<CR>", opts)
	end,
}
