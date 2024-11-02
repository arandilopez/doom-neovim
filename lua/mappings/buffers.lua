return {
  { "<leader>b", group = "Buffers" },
  { "<leader>bb", "<cmd>Telescope buffers<cr>", desc = "Browse buffers" },
  { "<leader>bd", "<cmd>Bwipeout<cr>", desc = "Remove buffer" },
  { "<leader>bK", "<cmd>bufdo :Bwipeout<cr><cmd>Dashboard<cr>", desc = "Remove all buffers" },
  { "<leader>bn", "<cmd>bnext<cr>", desc = "Next buffer" },
  { "<leader>bp", "<cmd>bprev<cr>", desc = "Previous buffer" },
}
