local elixirls_root_path = DATA_PATH .. "/lspinstall/elixir/elixir-ls"
local elixirls_bin = elixirls_root_path .. "/language_server.sh"
local config = require('lsp.config')

require('lspconfig').elixirls.setup {
  cmd = { elixirls_bin },
  on_attach = config.on_attach,
  capabilities = config.capabilities
}
