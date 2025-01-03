local lspconfig = require("lspconfig")
local config = require("lsp.config")

lspconfig.ts_ls.setup({
  on_attach = config.on_attach,
  capabilities = config.capabilities,
  filetypes = {
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "javascript",
    "javascriptreact",
    "javascript.jsx",
  },
})

-- lspconfig.eslint.setup({})

lspconfig.biome.setup({})

-- Add oxc lsp client for ts|tsx|js|jsx
vim.api.nvim_create_autocmd("FileType", {
  pattern = "typescript,typescriptreact,typescript.tsx,javascript,javascriptreact,javascript.jsx",
  callback = function(args)
    local root_dir = vim.fs.root(args.buf, { ".oxlintrc.json" })
    local cmd = table.concat({ root_dir, "node_modules", ".bin", "oxc_language_server" }, "/")

    vim.lsp.start({
      name = "oxlint",
      cmd = { "node", cmd },
      root_dir = root_dir,
    })
  end,
})
