-- Provides the Format and FormatWrite commands
require("formatter").setup({
  -- All formatter configurations are opt-in
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },
    javascriptreact = {
      require("formatter.filetypes.javascriptreact").prettier,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier,
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettier,
    },

    ruby = {
      require("formatter.filetypes.ruby").rubocop,
    },

    rust = {
      require("formatter.filetypes.rust").rustfmt,
    },

    elixir = {
      require("formatter.filetypes.elixir").mixformat,
    },

    go = {
      require("formatter.filetypes.go").goimports,
    },

    lua = {
      require("formatter.filetypes.lua").stylua,
    },

    python = {
      require("formatter.filetypes.python").black,
      require("formatter.filetypes.python").isort,
    },
  },
})

vim.cmd([[
  augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost * FormatWrite
  augroup END
]])
