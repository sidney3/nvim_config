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
    -- { "neovim/nvim-lspconfig" },
    {
      "pmizio/typescript-tools.nvim",
      dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
      opts = {},
    },

    -- Comment in visual mode
    { "terrortylor/nvim-comment" },

    -- Color scheme
    { "joshdick/onedark.vim" },

    -- File tree 
    { "kyazdani42/nvim-tree.lua" },
    {
      "nvim-tree/nvim-web-devicons",
      lazy = true, -- Only load when required
      config = function()
        require("nvim-web-devicons").setup()
      end,
    },
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- Leap for nvim (s--)
    { "tpope/vim-repeat" },
    { "ggandor/leap.nvim" },

}

local opts =
{
}

require("lazy").setup(plugins, opts)
require('nvim_comment').setup({})
require('nvim-tree').setup({})
-- local lspconfig = require('lspconfig')
-- lspconfig.tsserver.setup({})
require('leap').add_default_mappings()
