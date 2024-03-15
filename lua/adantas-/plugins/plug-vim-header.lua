return {
  "alpertuna/vim-header",
  event = "BufEnter",
  config = function()
    local g = vim.g

    g.header_auto_add_header = 1
    g.header_auto_update_header = 1
    g.header_alignment = 1
    g.header_max_size = 80
    g.header_field_author = "adantas-"
    g.header_field_author_email = "adantas-@student.42sp.org.br"
    g.header_field_modified_by = 0
    g.header_field_timestamp_format = "%Y/%m/%d"
    g.header_cfg_comment_char = '#'

    local k = vim.keymap
    local opts = {noremap = true, silent = true}

    k.set("n", "<leader><leader>ih", ":AddHeader<CR>", opts)
  end,
}
