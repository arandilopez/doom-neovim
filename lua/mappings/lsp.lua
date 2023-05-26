return {
  ["<Leader>"] = {
    c = {
      a = { "<cmd>Lspsaga code_action<cr>", "Code action" },
      f = { "<cmd>FormatWrite<cr>", "Code Formatting" },
      r = { "<cmd>Lspsaga rename<cr>", "Rename" },
      R = { "<cmd>LspReferences<cr>", "Got to references" },
      d = { "<cmd>Lspsaga show_line_diagnostic<cr>", "Code diagnostics" },
    },
  },

  g = {
    D = { "<cmd>LspDeclaration<cr>", "Go to declaration" },
    d = { "<cmd>LspDefinition<cr>", "Go to definition" },
    i = { "<cmd>LspImplementation<cr>", "Go to implementation" },
    R = { "<cmd>LspReferences<cr>", "Go to references" },
  },

  K = { "<cmd>Lspsaga hover_doc<cr>", "Show help/docs" },
}
