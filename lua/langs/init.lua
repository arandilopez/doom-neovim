vim.filetype.add({
  extension = {
    mdx = "mdx",
  },
  filename = {},
  pattern = {},
})

vim.treesitter.language.register("markdown", "mdx")
