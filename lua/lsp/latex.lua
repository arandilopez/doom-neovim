local config = require("lsp.config")

require("lspconfig").texlab.setup({
  on_attach = config.on_attach,
  capabilities = config.capabilities,
})
