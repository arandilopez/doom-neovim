local config = require('lsp.config')

require('lspconfig').solargraph.setup {
  flags = {
    debounce_text_changes = 150
  },
  on_attach = function(client, buffer)
   -- client.resolved_capabilities.document_formatting = false
   config.on_attach(client, buffer)
  end,
  capabilities = config.capabilities,
  filetypes = { "ruby" }
}
