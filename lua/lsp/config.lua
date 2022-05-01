local protocol = require'vim.lsp.protocol'

-- Generic on_attach callback
local on_attach = function(client, bufnr)
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Commands
  vim.cmd("command! LspDeclaration lua vim.lsp.buf.declaration()")
  vim.cmd("command! LspDefinition lua vim.lsp.buf.definition()")
  vim.cmd("command! LspFormatting lua vim.lsp.buf.formatting()")
  vim.cmd("command! LspCodeAction lua vim.lsp.buf.code_action()")
  vim.cmd("command! LspHover lua vim.lsp.buf.hover()")
  vim.cmd("command! LspRename lua vim.lsp.buf.rename()")
  vim.cmd("command! LspReferences lua vim.lsp.buf.references()")
  vim.cmd("command! LspTypeDefinition lua vim.lsp.buf.type_definition()")
  vim.cmd("command! LspImplementation lua vim.lsp.buf.implementation()")
  vim.cmd("command! LspSignatureHelp lua vim.lsp.buf.signature_help()")
  vim.cmd("command! LspDiagnostic lua vim.diagnostic.setqflist()")

  -- Autoformatting
  if client.server_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end

end

-- Generic capabilities with completion support
local capabilities = require('cmp_nvim_lsp').update_capabilities(protocol.make_client_capabilities())

return {
  on_attach = on_attach,
  capabilities = capabilities
}
