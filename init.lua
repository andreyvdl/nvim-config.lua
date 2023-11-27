-- [[
-- tutorials:
-- https://martinlwx.github.io/en/config-neovim-from-scratch/
-- https://mattermost.com/blog/how-to-install-and-set-up-neovim-for-code-editing/
-- https://github.com/nvim-lua/kickstart.nvim/
-- ]]
vim.g.mapleader = " "
require("adantas-.core.options") -- call configs
require("adantas-.core.keymaps") -- call keymaps
require("adantas-.lazy") -- start lazy

-- plugins call
