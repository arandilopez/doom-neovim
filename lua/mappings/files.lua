return {
  { "<leader>f", group = "Files" },
  { "<leader>fb", "<cmd>Telescope marks<cr>", desc = "Boorkmarks" },
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
  { "<leader>fn", "<cmd>DashboardNewFile<cr>", desc = "New file" },
  { "<leader>fp", "<cmd>tabe ~/.config/nvim/init.lua<cr>", desc = "Open configuration file" },
  { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent opened files" },
  { "<leader>fy", '<cmd>let @+ = expand("%:t")<cr>', desc = "Yank filename" },
  { "<leader>fY", '<cmd>let @+ = expand("%")<cr>', desc = "Yank relative file path" },
}
