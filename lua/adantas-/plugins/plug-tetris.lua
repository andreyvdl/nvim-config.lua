return {
	"alec-gibson/nvim-tetris",
	config = function()
		vim.keymap.set("n", "<leader>tetris", ":Tetris<CR>", {noremap = true, silent = true})
	end,
}
