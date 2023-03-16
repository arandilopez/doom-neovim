require("neotest").setup({
  adapters = {
    require("neotest-jest")({
      jestCommand = "yarn test ",
      cwd = function(path)
        return require("neotest-jest.util").find_package_json_ancestor(path)
      end,
    }),
  },
})

vim.cmd([[
command! NeotestNearest lua require("neotest").run.run()
command! NeotestFile lua require("neotest").run.run(vim.fn.expand("%"))
command! Neotest lua require("neotest").run.run(vim.fn.getcwd())

command! NeotestOutput lua require("neotest").output.open()
command! NeotestSummary lua require("neotest").summary.toggle()
" command! NeotestDebug lua require("neotest").run.run({ strategy = "dap" })
" command! NeotestAttach lua require("neotest").run.attach()
]])
