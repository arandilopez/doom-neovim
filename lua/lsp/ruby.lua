local config = require('lsp.config')

require('lspconfig').solargraph.setup {
  cmd = { "solargraph", "stdio" },
  filetypes = { "ruby" },
  init_options = {
    formatting = true
  },
  settings = {
    solargraph = {
      diagnostics = true
    }
  },
  flags = {
    debounce_text_changes = 150
  },
  on_attach = config.on_attach,
  capabilities = config.capabilities,
}
