local wk = require("which-key")
local opts = { mode = "n", silent = true, noremap = true }
local iopts = { mode = "i", silent = true, noremap = true }
local buffers = require("mappings.buffers")
local debugger = require("mappings.debugger")
local empty_lines = require("mappings.empty_lines")
local files = require("mappings.files")
local git = require("mappings.git")
local lsp = require("mappings.lsp")
local open = require("mappings.open")
local project = require("mappings.project")
local toggle = require("mappings.toggle")
local search = require("mappings.search")
local session = require("mappings.session")
local window = require("mappings.window")

vim.g.mapleader = " " -- Space

-- Normal mode mappings
wk.register({
  ["<leader>"] = {
    ["<space>"] = { "<cmd>Telescope find_files<cr>", "Find Files" },
    ["/"] = { "<cmd>Telescope live_grep<cr>", "Search in project" },
    [","] = { "<cmd>Telescope buffers<cr>", "Browse buffers" },
  },
  gc = { name = "+Comments" },
}, opts)
wk.register(buffers, opts)
wk.register(debugger, opts)
wk.register(empty_lines, opts)
wk.register(files, opts)
wk.register(git, opts)
wk.register(lsp, opts)
wk.register(open, opts)
wk.register(project, opts)
wk.register(toggle, opts)
wk.register(search, opts)
wk.register(session, opts)
wk.register(window, opts)

-- Insert mode mappings
wk.register({ ["<C-Space>"] = { "<cmd>LspSignatureHelp<cr>", "Signature Help" } }, iopts)
