vim.cmd([[packadd packer.nvim]])

local setup = function()
  -- Core functionality
  use("wbthomason/packer.nvim")
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use("windwp/nvim-ts-autotag")
  use({
    "nvim-telescope/telescope.nvim",
    requires = {
      { "nvim-lua/popup.nvim" },
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope-project.nvim" },
    },
  })
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
  })
  use({
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons",
  })
  use("tpope/vim-surround")
  use("tpope/vim-commentary")
  use("suy/vim-context-commentstring")
  use("JoosepAlviste/nvim-ts-context-commentstring")
  use("tpope/vim-endwise")
  use("andymass/vim-matchup")
  use("glepnir/dashboard-nvim")
  use("windwp/nvim-autopairs")
  use("moll/vim-bbye")
  use("junegunn/goyo.vim")
  use("dkarter/bullets.vim")
  use("gpanders/editorconfig.nvim")
  use("https://gitlab.com/yorickpeterse/nvim-pqf.git")
  use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" })
  use("xiyaowong/nvim-transparent")
  use("norcalli/nvim-colorizer.lua")

  -- Mappings
  use("folke/which-key.nvim")

  -- LSP and formatting
  use("neovim/nvim-lspconfig")
  use("kabouzeid/nvim-lspinstall")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-vsnip")
  use("hrsh7th/vim-vsnip")
  use("f3fora/cmp-spell")
  use("mhartington/formatter.nvim")
  use("onsails/lspkind.nvim")

  -- Language Support
  use("TovarishFin/vim-solidity")
  use("watzon/vim-edge-template")

  -- VCS plugins
  use("tpope/vim-fugitive")
  use("tpope/vim-rhubarb")
  use({ "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } })

  -- Debuggine support
  use("mfussenegger/nvim-dap")
  use("rcarriga/nvim-dap-ui")
  use("theHamsta/nvim-dap-virtual-text")
  use("nvim-telescope/telescope-dap.nvim")
  use("suketa/nvim-dap-ruby")
  use("mxsdev/nvim-dap-vscode-js")
  use({
    "microsoft/vscode-js-debug",
    opt = true,
    run = "npm install --legacy-peer-deps && npm run compile",
  })

  -- Colorscheme
  use("navarasu/onedark.nvim")
  use("dracula/vim")

  -- Extras
  use("github/copilot.vim")
  use("wakatime/vim-wakatime")
  use({
    "iamcco/markdown-preview.nvim",
    run = "cd app && yarn install",
    cmd = "MarkdownPreview",
    ft = { "markdown" },
  })
  use({
    "wthollingsworth/pomodoro.nvim",
    requires = "MunifTanjim/nui.nvim",
    config = function()
      require("pomodoro").setup({
        time_work = 25,
        time_break_short = 5,
        time_break_long = 20,
        timers_to_long_break = 4,
      })
    end,
  })
end

local options = {
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
}

local packer = require("packer")

packer.init(options)
packer.startup(setup)
