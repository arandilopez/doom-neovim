return {
  { "F5", "<cmd>lua require('dap').continue()<cr>", desc = "Continue to next breakpoint" },
  { "<F10>", "<cmd>lua require('dap').step_over()<cr>", desc = "Step over" },
  { "<F11>", "<cmd>lua require('dap').step_into()<cr>", desc = "Step into" },
  { "<F12>", "<cmd>lua require('dap').step_out()<cr>", desc = "Step out" },

  { "<leader>d", group = "Debugger" },

  { "<leader>db", "<cmd>lua require('dap').toggle_breakpoint()<cr>", desc = "Toggle breakpoint" },
  { "<leader>dr", "<cmd>lua require('dap').repl.open()<cr>", desc = "Open REPL session" },
  { "<leader>do", "<cmd>lua require('dapui').toggle()<cr>", desc = "Toggle DAP UI" },
  {
    "<leader>dc",
    "<Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
    desc = "Create a conditional breakpoint",
  },
  { "<leader>D", "<Cmd>lua require'dap'.clear_breakpoints()<CR>", desc = "Clear all breakpoints" },
  {
    "<leader>K",
    "<cmd>lua require('dap.ui.widgets').hover()<cr>",
    desc = "View the value of the expression under cursor",
  },
}
