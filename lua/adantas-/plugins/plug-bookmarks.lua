return {
	"MattesGroeger/vim-bookmarks",
	event = "BufRead",
	config = function()
		local opts = {noremap = false, silent = true}

		vim.api.nvim_set_keymap("n", "<leader><leader>bmt", ":BookmarkToggle<CR>", opts)
		vim.api.nvim_set_keymap("n", "<leader><leader>bmn", ":BookmarkNext<CR>", opts)
		vim.api.nvim_set_keymap("n", "<leader><leader>bmp", ":BookmarkPrev<CR>", opts)
		vim.api.nvim_set_keymap("n", "<leader><leader>bml", ":BookmarkShowAll<CR>", opts)
		vim.api.nvim_set_keymap("n", "<leader><leader>bmc", ":BookmarkClear<CR>", opts)
		vim.api.nvim_set_keymap("n", "<leader><leader>bma", ":BookmarkAnnotate<CR>", opts)
	end,
}
