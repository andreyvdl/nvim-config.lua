return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		require("nvim-treesitter.configs").setup(
			{
				indent = {
					enable = true,
				},
				autotag = {
					enable = true,
				},
				ensure_installed = {
					"markdown",
					"c",
					"cpp",
					"json",
					"lua",
					"bash",
					"python",
					"java",
					"html",
					"css",
					"javascript",
					"typescript",
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

		keymap.set("n", "<leader>pss", ":TSUpdateSync<CR>", opts)
		vim.cmd("TSToggle highlight")
	end,
}
