vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.keymap.set('n', '<leader>n!', ':set number!<CR>', {})
vim.keymap.set('n', '<leader>N!', ':set relativenumber!<CR>', {})
vim.keymap.set('n', '<leader>w', ':new <CR>', {})
vim.keymap.set('n', '<leader>wh', ':new <CR>', {})
