
-- Load settings
require('settings')

-- Load keymaps
require('keymaps')

-- Load plugins
require('plugins')

-- -- Load LSP configurations
require('lsp')

-- Load theme (aesthetics)
require('theme')

-- Custom Commands

require('commands')

vim.cmd('autocmd FileType cpp setlocal formatoptions-=r formatoptions-=o')
