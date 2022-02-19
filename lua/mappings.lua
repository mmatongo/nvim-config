-- opts
local g = vim.g
local vkm = vim.api.nvim_set_keymap
local fn = vim.fn
local vc = vim.cmd

-- leader key
g.mapleader = ' '

-- keymaps
vkm( 'n',   '<C-s>', ':write<CR>', {noremap = true, silent = true})
vkm( 'n',   '<C-x>', ':quit<CR>', {noremap = true, silent = true})
vkm( 'n',   '<C-e>', ':lua minimal()<CR>', {noremap = true, silent = true})
vkm( 'n',   '<C-a>', ':tabnew<CR>', {noremap = true, silent = true})
vkm( 'n',   '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vkm( 'n',   '<TAB>', ':tabnext<CR>', {noremap = true, silent = true})
vkm( 'n',   '<C-b>', ':Telescope buffers', {noremap = true, silent = true})

-- floatterm
vkm( 'n',   '<C-w>', ':FloatermNew<CR>', {noremap = true, silent = true})

function minimal()
  if active then
    vc [[
      set number relativenumber noshowmode showtabline=1 laststatus=2 signcolumn=yes foldcolumn=0 
      au WinEnter,BufEnter, * set number relativenumber 
    ]]
    active = false
  else 
    vc [[
      set nonumber norelativenumber showmode showtabline=0 laststatus=0 signcolumn=no foldcolumn=1
      au WinEnter,BufEnter, * set nonumber norelativenumber 
    ]]
    active = true
  end
end
