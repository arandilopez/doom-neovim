local set = vim.opt

vim.cmd([[
autocmd!
filetype plugin indent on
syntax enable
set termguicolors
colorscheme onedark
]])

set.compatible = false
set.swapfile = false
set.autoread = true
set.encoding = "utf8"
set.fileencodings = "utf8"
set.title = true
set.autoindent = true
set.timeout = true
set.timeoutlen = 500
set.number = true
-- set.relativenumber = true
set.tabstop = 2
set.shiftwidth = 2
set.shiftround = true
set.smarttab = true
set.expandtab = true
set.cursorline = true
set.showmatch = true
set.list = true
set.listchars = { trail = "·", space = "·", tab = "»·", eol = "¬" }
set.showmode = false
set.backspace = "2"
set.wildignore = set.wildignore
  + { "*/tmp/*", "*/vendor/*", "*/node_modules/*", "*/.git/*", "*/log/*", "*.so", "*.swp", "*.zip" }
set.wildmenu = true
set.ignorecase = true
set.smartcase = true
set.hlsearch = true
set.sc = true
set.hidden = true
set.backup = false
set.writebackup = false
set.cmdheight = 1
set.laststatus = 2
set.scrolloff = 5
set.updatetime = 300
set.shortmess:append("c")
set.conceallevel = 0
set.splitbelow = true
set.splitright = true
set.clipboard = "unnamedplus"
set.shell = "zsh"
set.exrc = true
set.inccommand = "split"
-- Remove trailing whitespace on save
vim.cmd("autocmd BufWritePre * :%s/\\s\\+$//e")

-- Fold settings
vim.wo.foldcolumn = "0"
vim.wo.foldlevel = 99
vim.o.foldlevelstart = 99
vim.wo.foldenable = true
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.cmd([[
hi default link UfoPreviewSbar PmenuSbar
hi default link UfoPreviewThumb PmenuThumb
hi default link UfoPreviewWinBar UfoFoldedBg
hi default link UfoPreviewCursorLine Visual
hi default link UfoFoldedEllipsis Comment
]])
