local config = require("lsp.config")

require("lspconfig").tailwindcss.setup({
  cmd = { "tailwindcss-language-server", "--stdio" },
  on_attach = config.on_attach,
  capabilities = config.capabilities,
  init_options = {
    userLanguages = {
      eelixir = "html-eex",
      eruby = "erb",
      templ = "html",
    },
  },
})
