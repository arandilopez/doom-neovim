local config = require('lsp.config')

require('lspconfig').dockerls.setup {
  on_attach = config.on_attach,
  capabilities = config.capabilities
}
