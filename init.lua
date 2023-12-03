--[[
tutorials:
https://martinlwx.github.io/en/config-neovim-from-scratch/
https://mattermost.com/blog/how-to-install-and-set-up-neovim-for-code-editing/
https://github.com/nvim-lua/kickstart.nvim/
https://youtu.be/ZjMzBd1Dqz8
--]]
vim.g.mapleader = " "
require("adantas-.core.options") -- call configs
require("adantas-.core.keymaps") -- call keymaps
require("adantas-.lazy") -- start lazy
