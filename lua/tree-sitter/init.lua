require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "c",
    "lua",
    "rust",
    "ruby",
    "tsx",
    "typescript",
    "javascript",
    "go",
    "graphql",
    "elixir",
    "python",
    "markdown",
    "markdown_inline",
  },
  highlight = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
  },
})
