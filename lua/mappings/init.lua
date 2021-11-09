local wk = require("which-key")
local opts = {mode = 'n', silent = true, noremap = true}
local normal_mappings = require('mappings.normal_mappings')

wk.register(normal_mappings, opts)
