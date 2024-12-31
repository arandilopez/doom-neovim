local config = require("lsp.config")
-- require("lspconfig").pyright.setup({
--   on_attach = config.on_attach,
--   capabilities = config.capabilities,
--   settings = {
--     python = {
--       analysis = {
--         autoSearchPaths = true,
--         diagnosticMode = "workspace",
--         useLibraryCodeForTypes = true,
--       },
--     },
--   },
-- })
require("lspconfig").ruff.setup({
  on_attach = config.on_attach,
  capabilities = config.capabilities,
  cmd = { "uv", "tool", "run", "ruff", "server" },
})
