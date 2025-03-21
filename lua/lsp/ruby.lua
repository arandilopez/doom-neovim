local config = require("lsp.config")
local lsp = require("lspconfig")
-- local utils = require("lspconfig/util")

-- local function sorbet_root_pattern(...)
--   local patterns = { "sorbet/config" }
--   return utils.root_pattern(unpack(patterns))(...)
-- end

lsp.ruby_lsp.setup({
  cmd = { "bundle", "exec", "ruby-lsp" },
  on_attach = config.on_attach,
  capabilities = config.capabilities,
  init_options = {
    formatter = "rubocop",
  },
})

-- lsp.sorbet.setup({
--   cmd = { "srb", "tc", "--lsp" },
--   filetypes = { "ruby" },
--   on_attach = config.on_attach,
--   capabilities = config.capabilities,
--   root_dir = function(fname)
--     return sorbet_root_pattern(fname)
--   end,
-- })
