-- Provides the Format and FormatWrite commands
require('formatter').setup {
  -- All formatter configurations are opt-in
  filetype = {
    javascript = {
      require('formatter.filetypes.javascript').prettier
    },
    javascriptreact = {
      require('formatter.filetypes.javascriptreact').prettier
    },
    typescript = {
      require('formatter.filetypes.typescript').prettier
    },
    typescriptreact = {
      require('formatter.filetypes.typescriptreact').prettier
    },

    ruby = {
      require('formatter.filetypes.ruby').rubocop
    },

    elixir = {
      require('formatting.filetypes.elixir').mix
    }
  }
}

vim.cmd([[
  augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost * FormatWrite
  augroup END
]])
