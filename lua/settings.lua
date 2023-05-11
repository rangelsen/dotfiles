vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.noswapfile = true
vim.o.syntax = true
vim.cmd('filetype plugin indent on')

-- colors
vim.cmd('colorscheme base16-gruvbox-dark-hard')
vim.o.termguicolors = true

-- NERDTree
vim.g.NERDTreeShowLineNumbers = true

require('lsp')
require('airline')
require('treesitter')
require('cmp_config')

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
