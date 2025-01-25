local biome_or_prettier = function()
  local cwd = vim.fn.getcwd()
  if vim.fn.filereadable(cwd .. "biome.json") == 1 then
    return require("formatter.filetypes.javascript").biome()
  else
    return require("formatter.filetypes.javascript").prettier()
  end
end

-- Provides the Format and FormatWrite commands
require("formatter").setup({
  -- All formatter configurations are opt-in
  filetype = {
    javascript = {
      function()
        return biome_or_prettier()
      end,
    },
    javascriptreact = {
      function()
        return biome_or_prettier()
      end,
    },
    typescript = {
      function()
        return biome_or_prettier()
      end,
    },
    typescriptreact = {
      function()
        return biome_or_prettier()
      end,
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
      -- require("formatter.filetypes.python").black,
      -- require("formatter.filetypes.python").isort,
      require("formatter.filetypes.python").ruff,
    },
  },
})

vim.cmd([[
  augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost * FormatWrite
  augroup END
]])
