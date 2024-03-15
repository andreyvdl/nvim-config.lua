return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	event = "BufEnter",
	config = function()
		require("nvim-treesitter.configs").setup(
			{
				indent = {
					enable = true,
				},
				autotag = {
					enable = true,
				},
				auto_install = true,
				highlight = {
					enble = true,
					additional_vim_regex_highlighting = true,
				},
			}
		)

		local keymap = vim.keymap
		local opts = {noremap = true, silent = true}

		keymap.set("n", "<leader><leader>pss", ":TSUpdateSync<CR>", opts)
		vim.cmd("TSToggle highlight")
	end,
}
