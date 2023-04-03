return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'tpope/vim-fugitive' -- Git commands
	use 'chriskempson/base16-vim' -- colors
	use 'preservim/nerdtree'
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
    use {
      'nvim-telescope/telescope.nvim', branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
end)
