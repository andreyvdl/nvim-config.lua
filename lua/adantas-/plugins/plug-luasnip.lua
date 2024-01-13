return {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	event = "BufEnter",
	config = function ()
		require("luasnip").setup()
	end,
}
