return {
  "olimorris/onedarkpro.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("onedarkpro").setup({
      options = {
        cursorline = true,
        transparency = true,
        lualine_transparency = true,
      }
    })

		local keymap = vim.keymap
		local opts = {noremap = true, silent = true}

		keymap.set("n", "<leader><leader>td", ":color onedark_dark<CR>", opts)
  end
}
