local wk = require("which-key")
local nops = {mode = 'n', silent = true, noremap = true}

wk.register({
  ["<leader>"] = {
    ["<space>"] = { "<cmd>Telescope find_files<cr>", "Find Files" },
    ["/"] = { "<cmd>Telescope live_grep<cr>", "Search in project" },

    b = {
      name = "+Buffers",
      b = { "<cmd>Telescope buffers<cr>", "Browse buffers" },
      d = { "<cmd>Bwipeout<cr>", "Remove buffer" },
      K = { "<cmd>bufdo :Bwipeout<cr>", "Remove all buffers" },
      n = { "<cmd>bnext<cr>", "Next buffer" },
      p = { "<cmd>bprev<cr>", "Previous buffer" },
    },

    f = {
      name = "+Files",
      f = { "<cmd>Telescope find_files<cr>", "Find Files" },
      h = { "<cmd>Telescope oldfiles<cr>", "Recent opened files" },
      b = { "<cmd>Telescope marks<cr>", "Boorkmarks" },
      n = { "<cmd>DashboardNewFile<cr>", "New file" },
    },

    g = {
      name = "+Git",
      g = { "<cmd>Gtabedit :<cr>", "Open Git manager" },
      B = { "<cmd>Git blame<cr>", "Open git blame" },
    },

    s = {
      name = "+Search",
      p = { "<cmd>Telescope live_grep<cr>", "Search in project" }
    },

    t = {
      name = "+Toggle",
      c = {"<cmd>Telescope colorscheme<cr>", "Colorscheme"}
    }

  },
}, nops)
