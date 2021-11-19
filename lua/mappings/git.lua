return {
  ["<Leader>"] = {
    g = {
      name = "+Git",
      g = { "<cmd>Gtabedit :<cr>", "Open git status summary" },
      B = { "<cmd>Git blame<cr>", "Git blame buffer" },
      b = { "<cmd>Telescope git_branches<cr>", "Switch to a git branch" },
      i = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "Toogle inline git blame" },
      s = { "<cmd>Telescope git_status<cr>", "Files in git status" },
    },
  }
}
