local config = require('lsp.config')

require('lspconfig').prismals.setup {
  on_attach = config.on_attach,
  capabilities = config.capabilities
}
