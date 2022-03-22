return {
  ["<Leader>"] = {
    c = {
      a = { "<cmd>LspCodeAction<cr>", "Code action" },
      f = { "<cmd>LspFormatting<cr>", "Code Formatting" },
      r = { "<cmd>LspRename<cr>", "Rename" },
      R = { "<cmd>LspReferences<cr>", "Got to references" },
      d = { "<cmd>LspDiagnostic<cr>", "Code diagnostics" },
    }
  },

  g = {
    D = { "<cmd>LspDeclaration<cr>", "Go to declaration" },
    d = { "<cmd>LspDefinition<cr>", "Go to definition" },
    i = { "<cmd>LspImplementation<cr>", "Go to implementation" },
    R = { "<cmd>LspReferences<cr>", "Go to references" },
  },

  K = { "<cmd>LspHover<cr>", "Show help/docs" },
}
