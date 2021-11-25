local config = require('lsp.config')

require('lspconfig').solang.setup {
  on_attach = config.on_attach,
  capabilities = config.capabilities
}
