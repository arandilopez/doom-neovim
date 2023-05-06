local config = require("lsp.config")
local lsp = require("lspconfig")
local utils = require("lspconfig/util")

local function ruby_root_pattern(...)
  local patterns = { ".git", "Gemfile" }
  return utils.root_pattern(unpack(patterns))(...)
end

local function sorbet_root_pattern(...)
  local patterns = { "sorbet/config" }
  return utils.root_pattern(unpack(patterns))(...)
end

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
  root_dir = function(fname)
    local is_sorbet = sorbet_root_pattern(fname)
    if is_sorbet then
      return false
    end
    return ruby_root_pattern(fname)
  end,
})

lsp.sorbet.setup({
  cmd = { "srb", "tc", "--lsp" },
  filetypes = { "ruby" },
  on_attach = config.on_attach,
  capabilities = config.capabilities,
  root_dir = function(fname)
    return sorbet_root_pattern(fname)
  end,
})
