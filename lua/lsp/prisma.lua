local config = require("lsp.config")

require("lspconfig").prismals.setup({
  cmd = { "prisma-language-server", "--stdio" },
  filetypes = { "prisma" },
  -- settings = {
  --   prisma = {
  --     prismaFmtBinPath = "pfmt",
  --   },
  -- },
  on_attach = function(client, buffer)
    config.on_attach(client, buffer)
    -- Handle formatting for prisma files with LSP
    vim.cmd("command! LspFormat lua vim.lsp.buf.formatting_sync()")
    vim.cmd([[
      augroup LspFormatAutogroup
        autocmd!
        autocmd BufWritePre *.prisma LspFormat
      augroup END
    ]])
  end,
  capabilities = config.capabilities,
})
