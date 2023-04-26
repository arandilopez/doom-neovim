local config = require("lsp.config")
local lsp = require("lspconfig")
local utils = require("lspconfig/util")

local function ruby_root_pattern(...)
  local patterns = { ".git", "Gemfile" }
  local is_ruby = utils.root_pattern(unpack(patterns))(...)
  return is_ruby
end

local function sorbet_root_pattern(...)
  local patterns = { "sorbet/config" }
  local is_sorbet_project = utils.root_pattern(unpack(patterns))(...)
  return is_sorbet_project
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
    return ruby_root_pattern(fname) and not sorbet_root_pattern(fname)
  end,
})

lsp.sorbet.setup({
  cmd = { "srb", "tc", "--lsp" },
  filetypes = { "ruby" },
  on_attach = config.on_attach,
  capabilities = config.capabilities,
  root_dir = function(fname)
    return ruby_root_pattern(fname) and sorbet_root_pattern(fname)
  end,
})
