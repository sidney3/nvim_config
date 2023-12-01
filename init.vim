" General Settings
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab
set number
syntax on
filetype plugin indent on
imap jj <Esc>
" Custom Commands
command! RunC !clang -Wall -Wextra -g % -o %< && ./%<
" For Competitive Programming
command! R  w|!clang++ -Wall -Wextra -g -std=c++20 % -o %< && ./%< < in.txt
command! RunPython !python3 %

" Key Mappings
" Plugin Settings
call plug#begin('~/local/share/nvim/plugged')

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

" Intellisense engine
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" nvim debugger
Plug 'sakhnik/nvim-gdb'

" Git commit markers
Plug 'airblade/vim-gitgutter'

" AutoPairs (bracket closing)
Plug 'jiangmiao/auto-pairs'

" lsp support
Plug 'neovim/nvim-lspconfig'

" Comment in visual mode
Plug 'terrortylor/nvim-comment'

call plug#end()

" Language Related Imports
let g:ppython3_host_pog = '/usr/local/bin/python3'

autocmd FileType cpp setlocal formatoptions-=r formatoptions-=o


lua << EOF
require'lspconfig'.clangd.setup{}
require('nvim_comment').setup({})
EOF
