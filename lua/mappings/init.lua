local wk = require("which-key")
local opts = {mode = 'n', silent = true, noremap = true}
local normal_mappings = require('normal_mappings')

wk.register(normal_mappings, opts)
