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

