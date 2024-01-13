return {
	"numToStr/Comment.nvim",
	event = "BufEnter",
	config = function()
		local opts = {noremap = false, silent = true}
		
		vim.api.nvim_set_keymap("n", "<leader>lc", "gcc", opts)
		vim.api.nvim_set_keymap("v", "<leader>lc", "gc", opts)

		require("Comment").setup()
	end,
}
