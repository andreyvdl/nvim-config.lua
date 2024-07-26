return {
	"ThePrimeagen/vim-be-good",
	config = function()
		local opts = {noremap = true, silent = true}

		vim.keymap.set("n", "<leader><leader>gvbg", ":VimBeGood<CR>", opts)
	end
}
