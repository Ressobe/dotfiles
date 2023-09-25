local keymap = vim.keymap

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "."

-- Window navigation
keymap.set('n', '<C-h>', '<C-w>h')
keymap.set('n', '<C-j>', '<C-w>j')
keymap.set('n', '<C-k>', '<C-w>k')
keymap.set('n', '<C-l>', '<C-w>l')

-- Save file
keymap.set('n', '<leader>w', ':w<CR>')
keymap.set('n', '<leader>wq', ':wq<CR>')

-- Close window
keymap.set('n', '<leader>c', ':close<CR>')

-- Quit
keymap.set('n', '<leader>q', ':q<CR>')

-- Open dashboard

-- Window split
keymap.set('n', 'ss', ':split<CR><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<CR><C-w>w', { silent = true })

-- Zenmode
keymap.set('n', '<A-z>', ':ZenMode<CR>')


-- Move line
keymap.set('i', '<A-j>', ':m .+1<CR>==gi')
keymap.set('i', '<A-k>', ':m .-2<CR>==gi')
keymap.set('n', '<A-j>', ':m .+1<CR>==')
keymap.set('n', '<A-k>', ':m .-2<CR>==')

-- NvimTree
keymap.set('n', '<A-e>', ':NvimTreeToggle<CR>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Move line (left/right)
keymap.set('v', '<', '<gv')
keymap.set('v', '>', '>gv')

-- Lazy packer manager
keymap.set('n', '<leader>p', ':Lazy<CR>')


keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')
