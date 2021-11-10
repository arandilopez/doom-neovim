return {
  ["<Leader>"] = {
    g = {
      name = "+Git",
      g = { "<cmd>Gtabedit :<cr>", "Open Git manager" },
      B = { "<cmd>Git blame<cr>", "Open git blame" },
    },
  }
}
