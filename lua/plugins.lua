vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Core functionality
  use 'wbthomason/packer.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tpope/vim-endwise'
  use 'andymass/vim-matchup'
  use 'glepnir/dashboard-nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  -- Mappings
  use "folke/which-key.nvim"

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  -- use 'glepnir/lspsaga.nvim'

  -- VCS plugins
  use 'tpope/vim-fugitive'
  use { 'lewis6991/gitsigns.nvim', -- git added/removed in sidebar + inline blame
    requires = { 'nvim-lua/plenary.nvim' },
  }

  -- Colorscheme
  use 'navarasu/onedark.nvim'
end)

