return {
  ["<Leader>"] = {
    g = {
      name = "+Git",
      g = { "<cmd>Gtabedit :<cr>", "Git status" },
      B = { "<cmd>Git blame<cr>", "Git blame" },
      b = { "<cmd>Telescope git_branches<cr>", "Git branch switch" },
      i = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "Toogle inline git blame" },
    },
  }
}
