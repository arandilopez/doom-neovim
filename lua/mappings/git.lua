return {
  { "<leader>g", group = "Git" },
  { "<leader>gg", "<cmd>Gtabedit :<cr>", desc = "Open git status summary" },
  { "<leader>gB", "<cmd>Git blame<cr>", desc = "Git blame buffer" },
  { "<leader>gb", "<cmd>Telescope git_branches<cr>", desc = "Switch to a git branch" },
  { "<leader>gi", "<cmd>Gitsigns toggle_current_line_blame<cr>", desc = "Toogle inline git blame" },
  { "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "Files in git status" },
  { "<leader>gp", "<cmd>Git push<cr>", desc = "Git push" },
  { "<leader>gl", "<cmd>Git pull --rebase<cr>", desc = "Git pull" },
  { "<leader>gS", "<cmd>Telescope git_stash<cr>", desc = "Show git stash" },
}
