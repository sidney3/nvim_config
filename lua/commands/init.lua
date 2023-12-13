local GitCommands = require('commands.git-commands')
local RunCommands = require('commands.run-commands')
local TemplateCommands = require('commands.template-commands')

-- Git Commands
vim.api.nvim_create_user_command('GA', GitCommands.GitAdd, {})
vim.api.nvim_create_user_command('GC', GitCommands.GitCommit, {
    nargs = 1
})
vim.api.nvim_create_user_command('GP', GitCommands.GitPush, {})

-- Running / Compilation related commands
vim.api.nvim_create_user_command('RunC', RunCommands.RunC, {})
vim.api.nvim_create_user_command('R', RunCommands.RunCPP, {}) -- Shorted for competitive programming

-- Competitive Programming Templates
vim.api.nvim_create_user_command('TBase', TemplateCommands.Base, {})
vim.api.nvim_create_user_command('TFastPow', TemplateCommands.FastPow, {})
vim.api.nvim_create_user_command('TMakePrimes', TemplateCommands.MakePrimes, {})
vim.api.nvim_create_user_command('TGetPF', TemplateCommands.GetPF, {})
