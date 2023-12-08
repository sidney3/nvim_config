let mapleader = " "
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab
set number
set relativenumber
syntax on
filetype plugin indent on
imap jj <Esc>
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap n nzz
nnoremap N Nzz
noremap <leader>p "+p
noremap <leader>y "+y

function! WrapWithMatchingChar()
    let l:char = nr2char(getchar())
    let l:matching_chars = {'(': ')', '[': ']', '{': '}', '<': '>'}
    let l:close_char = get(l:matching_chars, l:char, l:char)
    execute ":'<,'>s/\\%V.*\\%V/".l:char."&".l:close_char."/g"
endfunction

vnoremap <Leader>w :<C-u>call WrapWithMatchingChar()<CR>
" Custom Commands
command! RunC !clang -Wall -Wextra -g % -o %< && ./%<
" For Competitive Programming
command! R  w|!clang++ -Wall -Wextra -g -std=c++20 % -o %< && ./%< < in.txt
command! RunPython !python3 %
command! Template r ~/.config/nvim/templates/template.cpp

" Key Mappings
" Plugin Settings
call plug#begin('~/local/share/nvim/plugged')

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

" Intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'puremourning/vimspector'
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
-- nvim-comment setup
require('nvim_comment').setup({})

-- LSP setup with key mappings for function definition and go-to definition
local on_attach = function(_, bufnr)
    local buf_map = function(bufnr, mode, lhs, rhs)
        vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, { noremap = true, silent = true })
    end

    -- Hover documentation
    buf_map(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')

    -- Go to definition
    buf_map(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
end

-- Configure the LSP client
require'lspconfig'.clangd.setup{
    on_attach = on_attach,
}


-- Define key mappings for nvim-dap debugging
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

EOF
