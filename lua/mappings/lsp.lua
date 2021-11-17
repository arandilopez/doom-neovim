return {
  ["<Leader>"] = {
    c = {
      a = { "<cmd>LspCodeAction<cr>", "Code action" },
      d = { "<cmd>LspDiagLine<cr>", "Code diagnostics" },
      f = { "<cmd>LspFormatting<cr>", "Formatting" },
      r = { "<cmd>LspRename<cr>", "Rename" },
    }
  },

  g = {
    D = { "<cmd>LspDeclaration<cr>", "Declaration" },
    d = { "<cmd>LspDefinition<cr>", "Definition" },
    i = { "<cmd>LspImplementation<cr>", "Implementation" },
    R = { "<cmd>LspReferences<cr>", "References" },
  },

  K = { "<cmd>LspHover<cr>", "Show help/docs" },
}
