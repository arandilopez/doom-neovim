local protocol = require("vim.lsp.protocol")

-- Generic on_attach callback
local on_attach = function(client, bufnr)
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end
  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Commands
  vim.cmd("command! LspDeclaration lua vim.lsp.buf.declaration()")
  vim.cmd("command! LspDefinition lua vim.lsp.buf.definition()")
  vim.cmd("command! LspCodeAction lua vim.lsp.buf.code_action()")
  vim.cmd("command! LspHover lua vim.lsp.buf.hover()")
  vim.cmd("command! LspRename lua vim.lsp.buf.rename()")
  vim.cmd("command! LspReferences lua vim.lsp.buf.references()")
  vim.cmd("command! LspTypeDefinition lua vim.lsp.buf.type_definition()")
  vim.cmd("command! LspImplementation lua vim.lsp.buf.implementation()")
  vim.cmd("command! LspSignatureHelp lua vim.lsp.buf.signature_help()")
  vim.cmd("command! LspDiagnostic lua vim.diagnostic.setqflist()")
end

-- Generic capabilities with completion support
local capabilities = require("cmp_nvim_lsp").update_capabilities(protocol.make_client_capabilities())

-- Capabilities for auto folding
capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}

return {
  on_attach = on_attach,
  capabilities = capabilities,
}
