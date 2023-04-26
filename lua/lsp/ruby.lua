local config = require("lsp.config")
local lsp = require("lspconfig")
local utils = require("lspconfig/util")

lsp.solargraph.setup({
  cmd = { "solargraph", "stdio" },
  filetypes = { "ruby" },
  init_options = {
    formatting = true,
  },
  settings = {
    solargraph = {
      diagnostics = true,
    },
  },
  flags = {
    debounce_text_changes = 150,
  },
  on_attach = config.on_attach,
  capabilities = config.capabilities,
  root_dir = utils.root_pattern(".rubocop.yml"),
})

lsp.sorbet.setup({
  cmd = { "srb", "tc", "--lsp" },
  filetypes = { "ruby" },
  on_attach = config.on_attach,
  capabilities = config.capabilities,
  root_dir = utils.root_pattern("sorbet/config"),
})
