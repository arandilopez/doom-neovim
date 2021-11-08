local set = vim.opt
local global = vim.g
global.mapleader = ' '

vim.cmd([[
filetype plugin indent on
syntax enable
colorscheme onedark
]])

set.compatible = false
set.swapfile = false
set.autoread = true
set.encoding='utf8'
set.timeout= true
set.timeoutlen = 300
set.number = true
set.relativenumber = true
set.tabstop = 2
set.shiftwidth = 2
set.shiftround = true
set.smarttab = true
set.expandtab = true
set.cursorline = true
set.showmatch = true
set.list = true
set.listchars = {trail = '·', space = '·', tab = '»·', eol = '¬'}
set.showmode = false
set.backspace = '2'
set.wildignore = set.wildignore + {'*/tmp/*', '*/vendor/*', '*/node_modules/*', '*/.git/*', '*/log/*', '*.so', '*.swp', '*.zip'}
set.wildmenu = true
set.ignorecase = true
set.smartcase = true
set.hlsearch = true
set.sc = true
set.hidden = true
set.backup  = false
set.writebackup = false
set.cmdheight = 2
set.updatetime = 300
set.shortmess:append('c')
set.conceallevel = 0
set.splitbelow = true
set.splitright = true
set.clipboard = 'unnamedplus'
