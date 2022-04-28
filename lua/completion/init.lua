-- Setup nvim-cmp.
local cmp = require'cmp'
local types = require'cmp.types'
local misc = require'cmp.utils.misc'
local completionItemKindMap = {
  '', -- Text
  '', -- Method
  '', -- Function
  '', -- Constructor
  '', -- Field
  '', -- Variable
  '', -- Class
  'ﰮ', -- Interface
  '', -- Module
  '', -- Property
  '', -- Unit
  '', -- Value
  '', -- Enum
  '', -- Keyword
  '﬌', -- Snippet
  '', -- Color
  '', -- File
  '', -- Reference
  '', -- Folder
  '', -- EnumMember
  '', -- Constant
  '', -- Struct
  '', -- Event
  'ﬦ', -- Operator
  '', -- TypeParameter
}

local defaultMapping = {
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
}

local insertMapping = misc.merge(defaultMapping, {
  ['<Tab>'] = {
    i = cmp.mapping.select_next_item({ behavior = types.cmp.SelectBehavior.Select }),
  },
  ['<S-Tab>'] = {
    i = cmp.mapping.select_prev_item({ behavior = types.cmp.SelectBehavior.Select }),
  },
})

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    end,
  },
  mapping = cmp.mapping.preset.insert(insertMapping),
  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = completionItemKindMap[entry:get_completion_item().kind]
      return vim_item
    end
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' }, -- For vsnip users.
    { name = 'spell'},
  }, {
    { name = 'buffer' },
  })
})

cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  },
  mapping = cmp.mapping.preset.cmdline(defaultMapping)
})

cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  }),
  mapping = cmp.mapping.preset.cmdline(defaultMapping)
})
