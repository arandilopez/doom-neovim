return {
  ["<Leader>"] = {
    f = {
      name = "+Files",
      b = { "<cmd>Telescope marks<cr>", "Boorkmarks" },
      f = { "<cmd>Telescope find_files<cr>", "Find Files" },
      h = { "<cmd>Telescope oldfiles<cr>", "Recent opened files" },
      n = { "<cmd>DashboardNewFile<cr>", "New file" },
      p = { "<cmd>tabe ~/.config/nvim/init.lua<cr>", "Open configuration file" },
    },
  }
}
