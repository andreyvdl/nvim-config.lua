return {
	"xiyaowong/transparent.nvim",
	config = function()
		-- for lualine
		vim.cmd([[hi StatusLine ctermbg=0 cterm=NONE]])

		require("transparent").setup()
		vim.cmd("TransparentEnable")
	end,
}
