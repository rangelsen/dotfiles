function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

nmap('<C-n>', ':NERDTree<Cr>')
nmap('<C-t>', ':terminal<Cr>')
nmap('<C-l>', '3<C-w>>')
nmap('<C-h>', '3<C-w><')
nmap('<C-j>', '3<C-w>+')
nmap('<C-k>', '3<C-w>-')
nmap('<C-f>', ':Telescope find_files<Cr>')
tmap('<C-d>', '<C-\\><C-n>')
