return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'tpope/vim-fugitive' -- Git commands
	use 'chriskempson/base16-vim' -- colors
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
    use {
        'neovim/nvim-lspconfig',
        requires = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'j-hui/fidget.nvim',
        },
    }
    use 'nvim-treesitter/nvim-treesitter'
    use {
      'nvim-telescope/telescope.nvim', branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'hrsh7th/nvim-cmp',
        requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
    }
    use 'nvim-tree/nvim-tree.lua'
end)
