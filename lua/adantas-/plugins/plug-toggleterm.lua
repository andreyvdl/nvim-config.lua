return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		local opts = {noremap = true, silent = true}
		local keymap = vim.keymap

    require("toggleterm").setup({
      shell = "bash"
    })

		keymap.set("n", "<leader><leader><CR>",
			":ToggleTerm direction=float<CR>", opts)
	end,
}
