local config = require('lsp.config')

require('lspconfig').tailwindcss.setup {
  on_attach = config.on_attach,
  capabilities = config.capabilities
}
