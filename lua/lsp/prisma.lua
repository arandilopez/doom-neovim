local config = require('lsp.config')

require('lspconfig').prismals.setup {
  cmd = { 'prisma-language-server', '--stdio' },
  filetypes = { 'prisma' },
  on_attach = config.on_attach,
  capabilities = config.capabilities
}
