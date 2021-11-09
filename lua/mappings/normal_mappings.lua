local normal_mappings = {
  ["<leader>"] = {
    ["<space>"] = { "<cmd>Telescope find_files<cr>", "Find Files" },
    ["/"] = { "<cmd>Telescope live_grep<cr>", "Search in project" },
    [","] = { "<cmd>Telescope buffers<cr>", "Browse buffers" },

    b = {
      name = "+Buffers",
      b = { "<cmd>Telescope buffers<cr>", "Browse buffers" },
      d = { "<cmd>Bwipeout<cr>", "Remove buffer" },
      K = { "<cmd>bufdo :Bwipeout<cr><cmd>Dashboard<cr>", "Remove all buffers" },
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

    o = {
      name = "+Open",
      p = {"<cmd>NvimTreeToggle<cr>", "Open folder tree view"}
    },

    s = {
      name = "+Search",
      p = { "<cmd>Telescope live_grep<cr>", "Search in project" },
      s = {"<cmd>SessionSave<cr>", "Session save"},
      l = {"<cmd>SessionLoad<cr>", "Session load"},
    },

    t = {
      name = "+Toggle",
      c = {"<cmd>Telescope colorscheme<cr>", "Colorscheme"}
    },

    w = {
      h = {"<C-W><C-H>", "Move focus to left window"},
      j = {"<C-W><C-J>", "Move focus to above window"},
      k = {"<C-W><C-K>", "Move focus to below window"},
      l = {"<C-W><C-L>", "Move focus to right window"},
    }

  },
}

return normal_mappings
