--[[
tutorials:
https://martinlwx.github.io/en/config-neovim-from-scratch/
https://mattermost.com/blog/how-to-install-and-set-up-neovim-for-code-editing/
https://github.com/nvim-lua/kickstart.nvim/
https://youtu.be/ZjMzBd1Dqz8
--]]
vim.g.mapleader = " "

-- fix stupid verilog with *.v files
vim.api.nvim_exec([[autocmd BufNewFile,BufRead *.v setfiletype v]], false)
require("adantas-.core.options") -- call configs
require("adantas-.core.keymaps") -- call keymaps
require("adantas-.lazy") -- start lazy
-- init Whichkey
vim.cmd("W<CR><ESC>")

function ChColor()
  local colors = {
    "base16-tube",
    "onedark_dark",
    "base16-oceanicnext",
    "base16-seti",
    "base16-bright",
    "base16-brewer",
    "base16-material-vivid",
    "base16-spacemacs",
  }

  math.randomseed(os.clock() * 10 ^ 6)
  vim.cmd.colorscheme(colors[math.random(#colors)])
end

local bufname = vim.api.nvim_buf_get_name(0)
if bufname:match("docker-compose.yml$") then
    vim.bo.filetype = "yaml.docker-compose"
elseif bufname:match("compose.yml$") then
    vim.bo.filetype = "yaml.docker-compose"
end

-- Autocommand to call the function on FileType yaml
vim.cmd [[
  autocmd FileType yaml lua setFileTypeBasedOnName()
]]

-- Mapping for CoC filetype
vim.g.coc_filetype_map = {
  ["yaml.docker-compose"] = "dockercompose",
}

local k = vim.api
local o = {noremap = true, silent = true}

ChColor()
k.nvim_set_keymap("n", "<leader><leader>tc", ":lua ChColor()<CR>", o)
k.nvim_set_keymap("n", "<leader><leader>mp", ":MarkdownPreviewToggle<CR>", o)


-- docker-compose config
vim.api.nvim_create_autocmd("FileType", {
 pattern = "yaml",
 callback = function()
    if vim.fn.bufname("%") == "docker-compose.yml" then
      vim.opt.filetype = "yaml.docker-compose"
    elseif vim.fn.bufname("%") == "compose.yml" then
      vim.opt.filetype = "yaml.docker-compose"
    end
 end
})

vim.g.coc_filetype_map = {
 ["yaml.docker-compose"] = "dockercompose",
}

vim.g.user42 = "adantas-"
vim.g.mail42 = "adantas-@student.42sp.org.br"
