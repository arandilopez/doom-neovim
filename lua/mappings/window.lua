return {
  ["<Leader>"] = {
    w = {
      name = "+Window",
      h = { "<C-W><C-H>", "Move focus to left window" },
      j = { "<C-W><C-J>", "Move focus to above window" },
      k = { "<C-W><C-K>", "Move focus to below window" },
      l = { "<C-W><C-L>", "Move focus to right window" },
    },
  },
  s = {
    name = "+Split",
    s = { "<C-W>s", "Split window horizontally" },
    v = { "<C-W>v", "Split window vertically" },

    h = { "<C-W>H", "Move window to far left" },
    j = { "<C-W>J", "Move window to far bottom" },
    k = { "<C-W>K", "Move window to far top" },
    l = { "<C-W>L", "Move window to far right" },
  },
}
