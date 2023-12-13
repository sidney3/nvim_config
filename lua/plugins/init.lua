-- Plugin manager
-- Run `:Lazy home` to check package health
local lazypath = vim.fn.stdpath("data") .. "/site/pack/lazy/start/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = 
{
    -- Syntax highlighting
    { "sheerun/vim-polyglot" },

    -- Intellisense engine
    { "neoclide/coc.nvim", branch = "release" },

    -- Git commit markers
    { "airblade/vim-gitgutter" },

    -- AutoPairs (bracket closing)
    { "jiangmiao/auto-pairs" },

    -- LSP support
    { "neovim/nvim-lspconfig" },

    -- Comment in visual mode
    { "terrortylor/nvim-comment" },

    -- Color scheme
    { "joshdick/onedark.vim" },

    -- File tree 
    { "kyazdani42/nvim-tree.lua" },

    -- Silly file images
    { "kyazdani42/nvim-web-devicons" },

    -- Telescope and its dependencies
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim" }
}

local opts =
{
}

require("lazy").setup(plugins, opts)
require('nvim_comment').setup({})
require('nvim-tree').setup({})
require('plugins.devicons')
require('lspconfig').tsserver.setup({
  on_attach = function(client, bufnr)
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false
    -- Add further customizations here
  end
})
