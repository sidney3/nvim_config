
-- Vim-Plug Setup (can be done in init.lua or here with vim.cmd)
vim.cmd([[
call plug#begin('~/.local/share/nvim/plugged')

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

" Intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git commit markers
Plug 'airblade/vim-gitgutter'

" AutoPairs (bracket closing)
Plug 'jiangmiao/auto-pairs'

" LSP support
Plug 'neovim/nvim-lspconfig'

" Comment in visual mode
Plug 'terrortylor/nvim-comment'

" Color scheme
Plug 'joshdick/onedark.vim'

" File tree 
Plug 'kyazdani42/nvim-tree.lua'
" Silly file images
Plug 'kyazdani42/nvim-web-devicons' 

" Telescope and its dependencies
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()
]])

-- Plugin-specific Configurations

-- nvim-comment setup
require('nvim_comment').setup({})
require('nvim-tree').setup({})
require('plugins.devicons')

