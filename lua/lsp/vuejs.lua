local config = require'lsp.config'

require'lspconfig'.vuels.setup{
  command = { 'vls' },
  filetypes = { 'vue' },
  on_attach = config.on_attach,
  capabilities = config.capabilities
}
