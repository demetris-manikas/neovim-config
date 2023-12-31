vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.splitright = true

vim.keymap.set('n', '<leader>n!', ':set number!<CR>', {})
vim.keymap.set('n', '<leader>N!', ':set relativenumber!<CR>', {})
vim.keymap.set('n', '<leader>|', ':vnew <CR>', {})
vim.keymap.set('n', '<leader>wh', ':new <CR>', {})
vim.keymap.set('n', '<C-s>', ':w <CR>', {})
vim.keymap.set('n', '<C-z>', 'u <CR>', {})

vim.keymap.set('n', '<leader>gg', ':!xterm -geometry 160x90+620+2 -fn 10x20 -e lazygit <CR>', {})

