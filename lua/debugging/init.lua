local DEBUGGER_PATH = vim.fn.stdpath("data") .. "/site/pack/packer/opt/vscode-js-debug"
local dap = require("dap")
local dapui = require("dapui")

dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

require("nvim-dap-virtual-text").setup({})

-- Load launch.js files
require("dap.ext.vscode").load_launchjs(nil, {})

-- Language support for dap
require("dap-ruby").setup()
require("dap-vscode-js").setup({
  node_path = "node",
  debugger_path = DEBUGGER_PATH,
  adapters = { "pwa-node", "pwa-chrome" },
})

for _, filetype in ipairs({ "typescriptreact", "tsx", "javascriptreact", "jsx" }) do
  require("dap").configurations[filetype] = {
    {
      type = "pwa-chrome",
      name = "Attach to Chrome",
      request = "attach",
      program = "${file}",
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
      protocol = "inspector",
      port = 9222,
      webRoot = "${workspaceFolder}",
    },
    {
      type = "pwa-chrome",
      name = "Launch Chrome",
      request = "launch",
      url = "http://localhost:3000",
    },
  }
end

for _, filetype in ipairs({ "typescript", "javascript" }) do
  require("dap").configurations[filetype] = {
    {
      type = "pwa-node",
      request = "attach",
      name = "Attach debug session",
      processId = require("dap.utils").pick_process,
      cwd = "${workspaceFolder}",
    },
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      cwd = "${workspaceFolder}",
    },
    {
      type = "pwa-node",
      request = "launch",
      name = "Debug Jest Test",
      trace = true, -- include debugger info
      runtimeExecutable = "node",
      runtimeArgs = {
        "./node_modules/jest/bin/jest.js",
        "--runInBand",
      },
      rootPath = "${workspaceFolder}",
      cwd = "${workspaceFolder}",
      console = "integratedTerminal",
      internalConsoleOptions = "neverOpen",
    },
  }
end

-- Debugging icons

vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DiagnosticSignError", linehl = "", numhl = "" })
vim.fn.sign_define("DapBreakpointCondition", { text = "", texthl = "DiagnosticSignError", linehl = "", numhl = "" })
vim.fn.sign_define("DapBreakpointRejected", { text = "", texthl = "DiagnosticSignError", linehl = "", numhl = "" })
vim.fn.sign_define(
  "DapStopped",
  { text = "", texthl = "DiagnosticSignWarn", linehl = "Visual", numhl = "DiagnosticSignWarn" }
)
