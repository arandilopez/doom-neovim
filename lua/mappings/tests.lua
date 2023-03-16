return {
  ["<Leader>"] = {
    t = {
      name = "+Test",
      t = { "<cmd>NeotestNearest<cr>", "Run single test" },
      f = { "<cmd>NeotestFile<cr>", "Run this file" },
      A = { "<cmd>Neotest<cr>", "Run all tests" },
      s = { "<cmd>NeotestSummary<cr>", "Toogle summary" },
      o = { "<cmd>NeotestOutput<cr>", "Toogle output" },
    },
  },
}
