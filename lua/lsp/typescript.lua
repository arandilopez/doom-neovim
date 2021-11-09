local config = require('lsp.config')

require('lspconfig').tsserver.setup {
  on_attach = config.on_attach,
  capabilities = config.capabilities,
  filetypes = { 
    "typescript", 
    "typescriptreact", 
    "typescript.tsx",
    "javascript",
    "javascriptreact",
    "javascript.jsx"
  }
}
