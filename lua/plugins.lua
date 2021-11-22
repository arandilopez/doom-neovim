vim.cmd [[packadd packer.nvim]]

local setup = function()
  -- Core functionality
  use 'wbthomason/packer.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-project.nvim'}
    }
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'suy/vim-context-commentstring'
  use 'tpope/vim-endwise'
  use 'andymass/vim-matchup'
  use 'glepnir/dashboard-nvim'
  use 'windwp/nvim-autopairs'
  use 'moll/vim-bbye'
  use 'junegunn/goyo.vim'

  -- Mappings
  use "folke/which-key.nvim"

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'f3fora/cmp-spell'

  -- Language Support
  use 'TovarishFin/vim-solidity'

  -- VCS plugins
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use { 'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  }

  -- Colorscheme
  use 'navarasu/onedark.nvim'

  -- Extras
  use 'wakatime/vim-wakatime'
end

local options = {
  config = {
    display = {
      open_fn = function ()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
}

return require('packer').startup({ setup, options })

