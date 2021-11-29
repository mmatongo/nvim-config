-- opts
local g = vim.g
local vkm = vim.api.nvim_set_keymap
local fn = vim.fn

-- leader key
g.mapleader = ' '

-- keymaps
vkm( 'n',   '<C-s>', ':write<CR>', {noremap = true, silent = true})
vkm( 'n',   '<C-e>', ':Vexplore<CR>', {noremap = true, silent = true})
vkm( 'n',   '<C-a>', ':NERDTreeTabsToggle<CR>', {noremap = true, silent = true})
vkm( 'n',   '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
