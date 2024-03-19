require("lsp.docker")
require("lsp.elixir")
require("lsp.emmet")
require("lsp.go")
require("lsp.graphql")
require("lsp.lua_ls")
require("lsp.prisma")
require("lsp.python")
require("lsp.ruby")
require("lsp.rust")
require("lsp.solidity")
require("lsp.tailwindcss")
require("lsp.terraform")
require("lsp.typescript")
require("lsp.vuejs")

-- Customize inline diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  -- This sets the spacing and the prefix, obviously.
  virtual_text = {
    spacing = 4,
    prefix = "",
  },
})

-- Change diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }
for type, icon in pairs(signs) do
  local hl
  if vim.fn.has("nvim-0.6.0") then
    hl = "DiagnosticSign" .. type
  else
    hl = "LspDiagnosticsSign" .. type
  end
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
