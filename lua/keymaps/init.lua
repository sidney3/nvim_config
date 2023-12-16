local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- General Mappings
map('i', 'jj', '<Esc>', opts)
map('n', '<C-u>', '<C-u>zz', opts)
map('n', '<C-d>', '<C-d>zz', opts)
map('n', 'n', 'nzz', opts)
map('n', 'N', 'Nzz', opts)
map('x', '<leader>p', '"+p', opts)
map('x', '<leader>y', '"+y', opts)
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts)
map('t', 'jj', '<C-\\><C-n>', opts)
