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

-- LSP settings
local lspconfig = require('lspconfig')
lspconfig.hls.setup {
    haskell = {
        formattingProvider = "stylish-haskell"
    }
}
vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

-- Airline settings
vim.g['airline#extensions#tabline#formatter'] = 'unique_tail'
vim.g['airline_powerline_fonts'] = 1
vim.g['airline#extensions#branch#enabled'] = 1
vim.g['airline_theme'] = 'deus'

if vim.g['g:airline_symbols'] ~= 0
then
    vim.g['ailine_symbols'] = {}
end

-- unicode
vim.g['airline_left_sep'] = '»'
vim.g['airline_left_sep'] = '▶'
vim.g['airline_right_sep'] = '«'
vim.g['airline_right_sep'] = '◀'
vim.g['airline_symbols.crypt'] = '🔒'
vim.g['airline_symbols.linenr'] = '☰'
vim.g['airline_symbols.linenr'] = '␊'
vim.g['airline_symbols.linenr'] = '␤'
vim.g['airline_symbols.linenr'] = '¶'
vim.g['airline_symbols.maxlinenr'] = ''
vim.g['airline_symbols.maxlinenr'] = '㏑'
vim.g['airline_symbols.branch'] = '⎇'
vim.g['airline_symbols.paste'] = 'ρ'
vim.g['airline_symbols.paste'] = 'Þ'
vim.g['airline_symbols.paste'] = '∥'
vim.g['airline_symbols.spell'] = 'Ꞩ'
vim.g['airline_symbols.notexists'] = 'Ɇ'
vim.g['airline_symbols.whitespace'] = 'Ξ'
-- powerline
vim.g['airline_left_sep'] = ''
vim.g['airline_left_alt_sep'] = ''
vim.g['airline_right_sep'] = ''
vim.g['airline_right_alt_sep'] = ''
vim.g['airline_symbols.branch'] = ''
vim.g['airline_symbols.readonly'] = ''
vim.g['airline_symbols.linenr'] = '☰'
vim.g['airline_symbols.maxlinenr'] = ''
vim.g['airline_symbols.dirty'] ='⚡'
