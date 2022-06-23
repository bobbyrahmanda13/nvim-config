return require('packer').startup(function()
use "wbthomason/packer.nvim"
use {"dracula/vim", as = "dracula"}
use "lukas-reineke/indent-blankline.nvim"
use "kyazdani42/nvim-web-devicons"
use "kyazdani42/nvim-tree.lua"
use "neovim/nvim-lspconfig"
use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
use 'L3MON4D3/LuaSnip' -- Snippets plugin
use 'williamboman/nvim-lsp-installer'
use 'onsails/lspkind.nvim'
use 'nvim-lualine/lualine.nvim'
use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
use 'nvim-treesitter/nvim-treesitter-refactor'
use 'nvim-lua/plenary.nvim'
use 'nvim-telescope/telescope.nvim'
use 'rcarriga/nvim-notify'
use 'romgrk/barbar.nvim'
use 'numToStr/Comment.nvim'
use 'jose-elias-alvarez/null-ls.nvim'
end)




