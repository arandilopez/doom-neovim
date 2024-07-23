require("ufo").setup({
  open_fold_hl_timeout = 400,
  close_fold_kinds_for_ft = {},
  provider_selector = function(bufnr, filetype, buftype)
    return { "treesitter", "indent" }
  end,
})
vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
