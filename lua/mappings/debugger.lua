return {

  ["<Leader>"] = {
    d = {
      name = "+Debugger",
      b = { "<cmd>lua require('dap').toggle_breakpoint()<cr>", "Toggle breakpoint" },
      c = { "<cmd>lua require('dap').continue()<cr>", "Continue to next breakpoint" },
      u = { "<cmd>lua require('dap').step_over()<cr>", "Step over" },
      i = { "<cmd>lua require('dap').step_into()<cr>", "Step into" },
      o = { "<cmd>lua require('dap').step_out()<cr>", "Step out" },
      r = { "<cmd>lua require('dap').repl.open()<cr>", "Open REPL session" },
      K = { "<cmd>lua require('dap.ui.widgets').hover()<cr>", "View the value of the expression under cursor" },
      O = { "<cmd>lua require('dapui').toggle()<cr>", "Toggle DAP UI" },
    },
  },
}
