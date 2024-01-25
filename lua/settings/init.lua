-- Set leader key
vim.g.mapleader = " "

-- Basic Editor Settings
vim.o.tabstop = 4       -- Number of spaces that a <Tab> in the file counts for
vim.o.shiftwidth = 4    -- Number of spaces to use for each step of (auto)indent
vim.o.autoindent = true -- Copy indent from current line when starting a new line
vim.o.smartindent = true -- Do smart autoindenting when starting a new line
vim.o.expandtab = true  -- Convert tabs to spaces

vim.o.timeoutlen = 1000 -- Time in milliseconds to wait for a mapped sequence to complete.
vim.o.ttimeoutlen = 10  -- Time in milliseconds to wait for a key code sequence to complete.

-- Syntax Highlighting and Filetype Detection
vim.cmd('syntax on')                      -- Enable syntax highlighting
vim.cmd('filetype plugin indent on')      -- Enables filetype detection

-- Key Mappings
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'n', 'nzz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>P', '"+P', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true, silent = true })

require('settings.options')
