return {
  ["<Leader>"] = {
    T = {
      name = "+Toggle",
      c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
      n = { "<cmd>set rnu!<cr>", "Relative numbering" },
      t = { "<cmd>Lspsaga term_toggle<cr>", "Terminal" },
      z = { "<cmd>Goyo<cr>", "Zen mode" },
    },
  },
}
