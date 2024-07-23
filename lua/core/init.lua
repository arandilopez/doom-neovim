require("colorizer").setup()

vim.g.vimtex_view_method = "skim"
vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_compiler_latexmk = {
  options = {
    "-verbose",
    "-pdf",
    "-file-line-error",
    "-synctex=1",
    "-interaction=nonstopmode",
    "-shell-escape",
  },
}
