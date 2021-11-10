local config = require('lsp.config')

require('lspconfig').graphql.setup {
  on_attach = config.on_attach,
  capabilities = config.capabilities
}
