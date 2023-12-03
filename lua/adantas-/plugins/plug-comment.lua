return {
	"numToStr/Comment.nvim",
	config = function()
		local opts = {noremap = false, silent = true}

		vim.api.nvim_set_keymap("n", "<leader>pcl", "gcc", opts)
		vim.api.nvim_set_keymap("v", "<leader>pcl", "gc", opts)

		require("Comment").setup()
	end,
}
