local GitCommands = require('commands.git-commands')
local RunCommands = require('commands.run-commands')
local TemplateCommands = require('commands.template-commands')
local MarkdownCommands = require('commands.markdown-commands')
require('commands.aliases')

-- Git Commands
vim.api.nvim_create_user_command('GA', GitCommands.GitAdd, {})
vim.api.nvim_create_user_command('GC', GitCommands.GitCommit, {
    nargs = 1
})
vim.api.nvim_create_user_command('GP', GitCommands.GitPush, {})

-- Running / Compilation related commands
vim.api.nvim_create_user_command('Py', RunCommands.RunPython, {})

vim.api.nvim_create_user_command('R', RunCommands.RunCPP, {}) -- Shorted for competitive programming
vim.api.nvim_create_user_command('B', RunCommands.ExpandDependencies, {}) -- build

-- Competitive Programming Templates
vim.api.nvim_create_user_command('Base', TemplateCommands.Base, {})

vim.api.nvim_create_user_command('Table', MarkdownCommands.PrintTable, {
    nargs = "*" 
})
