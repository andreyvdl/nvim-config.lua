-- not working... something about build/index.js
return {
	"neoclide/coc.nvim",
	branch = "release",
	dependencies = {"Maxattax97/coc-ccls"},
	config = function()
		vim.g.coc_node_path = "/usr/bin/node"
	end,
}
