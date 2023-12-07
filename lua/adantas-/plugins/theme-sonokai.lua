return {
	"sainnhe/sonokai",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme sonokai")
		vim.g.sonokai_transparent_background = 2
	end
}
