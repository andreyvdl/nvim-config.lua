return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  event = "BufEnter",
  config = function()
    require("neogen").setup({})
    local opts = {noremap = true, silent = true}
    local k = vim.keymap

    k.set("n", "<leader><leader>id", ":Neogen<CR>", opts)
  end,
}
