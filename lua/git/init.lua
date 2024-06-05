require("gitsigns").setup({
  auto_attach = true,
  signcolumn = true,
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
    virt_text_priority = 100,
    ignore_whitespace = true,
  },
  current_line_blame_formatter_opts = {
    relative_time = true,
  },
})

-- Fixes git blame comments with Dracula theme
vim.api.nvim_set_hl(0, "GitsignsCurrentLineBlame", { link = "Visual" })
