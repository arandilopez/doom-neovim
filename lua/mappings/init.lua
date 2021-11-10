local wk = require("which-key")
local opts = {mode = 'n', silent = true, noremap = true}
local buffers = require('mappings.buffers')
local files = require('mappings.files')
local git = require('mappings.git')
local open = require('mappings.open')
local toggle = require('mappings.toggle')
local search = require('mappings.search')
local session = require('mappings.session')
local window = require('mappings.window')

vim.g.mapleader = ' ' -- Space

wk.register({
  ["<leader>"] = {
    ["<space>"] = { "<cmd>Telescope find_files<cr>", "Find Files" },
    ["/"] = { "<cmd>Telescope live_grep<cr>", "Search in project" },
    [","] = { "<cmd>Telescope buffers<cr>", "Browse buffers" },
  }
}, opts)

wk.register(buffers, opts)
wk.register(files, opts)
wk.register(git, opts)
wk.register(open, opts)
wk.register(toggle, opts)
wk.register(search, opts)
wk.register(session, opts)
wk.register(window, opts)
