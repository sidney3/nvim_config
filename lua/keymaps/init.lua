local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- General Mappings
map('i', 'jj', '<Esc>', opts)
map('n', '<C-u>', '<C-u>zz', opts)
map('n', '<C-d>', '<C-d>zz', opts)
map('n', 'n', 'nzz', opts)
map('n', 'N', 'Nzz', opts)
map('n', '<leader>p', '"+p', opts)
map('n', '<leader>y', '"+y', opts)
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
