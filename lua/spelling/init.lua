-- Enable spelling on markdown files
vim.cmd("autocmd BufRead,BufNewFile *.md setlocal spell")
-- Enable spelling on commits
vim.cmd("autocmd FileType gitcommit setlocal spell")

vim.opt.complete = vim.opt.complete + { "kspell" }
