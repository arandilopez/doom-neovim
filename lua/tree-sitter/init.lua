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
    "sql",
    "query",
    "r",
    "rnoweb",
    "yaml",
    "latex",
    "csv",
  },
  sync_install = false,
  auto_install = true,
  ignore_install = {},
  highlight = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  matchup = {
    enable = true,
  },
  playground = {
    enable = true,
    keybindings = {
      toggle_query_editor = "o",
      toggle_hl_groups = "i",
      toggle_injected_languages = "t",
      toggle_anonymous_nodes = "a",
      toggle_language_display = "I",
      focus_language = "f",
      unfocus_language = "F",
      update = "R",
      goto_node = "<cr>",
      show_help = "?",
    },
  },
})
