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
  use 'moll/vim-bbye'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }
  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup{} end
  }

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
  -- use 'glepnir/lspsaga.nvim'

  -- VCS plugins
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use { 'lewis6991/gitsigns.nvim', -- git added/removed in sidebar + inline blame
    requires = { 'nvim-lua/plenary.nvim' },
  }

  -- Colorscheme
  use 'navarasu/onedark.nvim'

  -- Extras
  use 'wakatime/vim-wakatime'
end)

