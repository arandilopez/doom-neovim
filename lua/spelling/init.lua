-- Enable spelling on markdown files
-- vim.cmd("autocmd BufRead,BufNewFile *.md setlocal spell")
-- Enable spelling on commits
-- vim.cmd("autocmd FileType gitcommit setlocal spell")

-- vim.opt.complete = vim.opt.complete + { "kspell" }

-- local cspell = require("cspell")
-- local null_ls = require("null-ls")

-- null_ls.setup({
--   sources = {
--     cspell.diagnostics,
--     cspell.code_actions,
--   },
-- })
