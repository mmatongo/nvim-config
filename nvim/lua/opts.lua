local opt = vim.opt

opt.mouse = 'a'
opt.fillchars = [[fold: ,vert:│,eob: ,msgsep:‾]]
---
opt.termguicolors = true
opt.nu = true
opt.rnu = true
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 2
opt.inccommand = 'nosplit'
opt.laststatus = 0
opt.cmdheight = 2
opt.ma = true

-- more opts
opt.ignorecase = true
opt.smartcase = true
opt.sidescroll = 40
opt.incsearch = true
opt.hlsearch = true
opt.undofile = true
opt.backspace = 'indent,eol,start'
opt.hidden = true
opt.wildmenu = true
opt.foldmethod = 'manual'
opt.complete = '.,w,b,i,u,t,'
opt.background = [[dark]]
opt.laststatus = 0
opt.autochdir = true
