local wk = require("which-key")
local nops = {mode = 'n', silent = true, noremap = true}

wk.register({
  ["<leader>"] = {
    ["<space>"] = { "<cmd>Telescope find_files<cr>", "Find Files" },

    f = {
      name = "+Find",
      f = { "<cmd>Telescope find_files<cr>", "Find Files" }
    },

    b = {
      name = "+Buffers",
      b = { "<cmd>Telescope buffers<cr>", "Browse buffers" },
    },

    s = {
      name = "+Search",
      p = { "<cmd>Telescope live_grep<cr>", "Search in project" }
    },

    g = {
      name = "+Git",
      g = { "<cmd>Gtabedit :<cr>", "Open Git manager" },
      B = { "<cmd>Git blame<cr>", "Open git blame" },
    }
  },
}, nops)
