local nvim_lsp = require('lspconfig')

-- Function to attach completion and keybindings when a language server attaches to a buffer
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Key mappings
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})
    -- Add more keybindings here
end

-- LSP Server Configurations
nvim_lsp.clangd.setup({
    on_attach = on_attach,
    -- Additional setup options here
})

