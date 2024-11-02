local wk = require("which-key")
local buffers = require("mappings.buffers")
local debugger = require("mappings.debugger")
local empty_lines = require("mappings.empty_lines")
local files = require("mappings.files")
local git = require("mappings.git")
local lsp = require("mappings.lsp")
local open = require("mappings.open")
local project = require("mappings.project")
local tests = require("mappings.tests")
local toggle = require("mappings.toggle")
local search = require("mappings.search")
local session = require("mappings.session")
local window = require("mappings.window")

-- Normal mode mappings

wk.add({
  { "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
  { "<leader>/", "<cmd>Telescope live_grep<cr>", desc = "Search in project" },
  { "<leader>,", "<cmd>Telescope buffers<cr>", desc = "Browse buffers" },
  { "<leader>gc", group = "Comments" },
})

wk.add(buffers)
wk.add(debugger)
wk.add(empty_lines)
wk.add(files)
wk.add(git)
wk.add(lsp)
wk.add(open)
wk.add(project)
wk.add(tests)
wk.add(toggle)
wk.add(search)
wk.add(session)
wk.add(window)

-- Insert mode mappings
wk.add({ { "<C-Space>", "<cmd>LspSignatureHelp<cr>", desc = "Signature Help" }, mode = { "i" } })
