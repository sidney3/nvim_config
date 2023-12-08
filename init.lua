
-- Load settings
require('settings')

-- Load keymaps
require('keymaps')

-- Load plugins
require('plugins')

-- Load LSP configurations
require('lsp')

-- Load theme (aesthetics)

require('theme')

-- Additional Configurations

-- For Language Specific Settings
vim.cmd('autocmd FileType cpp setlocal formatoptions-=r formatoptions-=o')

-- Custom Vim Commands
-- These can be Vimscript commands that you want to keep from your old init.vim
vim.cmd([[
command! RunC !clang -Wall -Wextra -g % -o %< && ./%<
command! R  w|!clang++ -Wall -Wextra -g -std=c++20 % -o %< && ./%< < in.txt
command! RunPython !python3 %
command! Template r ~/.config/nvim/templates/template.cpp
]])
