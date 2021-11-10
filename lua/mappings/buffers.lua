return {
  ["<Leader>"] = {
    b = {
      name = "+Buffers",
      b = { "<cmd>Telescope buffers<cr>", "Browse buffers" },
      d = { "<cmd>Bwipeout<cr>", "Remove buffer" },
      K = { "<cmd>bufdo :Bwipeout<cr><cmd>Dashboard<cr>", "Remove all buffers" },
      n = { "<cmd>bnext<cr>", "Next buffer" },
      p = { "<cmd>bprev<cr>", "Previous buffer" },
    },
  }
}
