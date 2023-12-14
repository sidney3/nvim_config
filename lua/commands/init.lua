local GitCommands = require('commands.git-commands')
local RunCommands = require('commands.run-commands')
local TemplateCommands = require('commands.template-commands')
require('commands.aliases')

-- Git Commands
vim.api.nvim_create_user_command('GA', GitCommands.GitAdd, {})
vim.api.nvim_create_user_command('GC', GitCommands.GitCommit, {
    nargs = 1
})
vim.api.nvim_create_user_command('GP', GitCommands.GitPush, {})

-- Running / Compilation related commands
vim.api.nvim_create_user_command('RunC', RunCommands.RunC, {})
vim.api.nvim_create_user_command('R', RunCommands.RunCPP, {}) -- Shorted for competitive programming
vim.api.nvim_create_user_command('Py', RunCommands.RunPython, {})
vim.api.nvim_create_user_command('CPPMakeFlags', TemplateCommands.CPPBaseCompileFlags, {})

-- Competitive Programming Templates
vim.api.nvim_create_user_command('TBase', TemplateCommands.Base, {})
vim.api.nvim_create_user_command('TFastPow', TemplateCommands.FastPow, {})
vim.api.nvim_create_user_command('TMakePrimes', TemplateCommands.MakePrimes, {})
vim.api.nvim_create_user_command('TGetPF', TemplateCommands.GetPF, {})
vim.api.nvim_create_user_command('TGetDivisors', TemplateCommands.GetDivisors, {})
vim.api.nvim_create_user_command('TMRQ', TemplateCommands.MRQ, {})
vim.api.nvim_create_user_command('TFenwick', TemplateCommands.Fenwick, {})
vim.api.nvim_create_user_command('TRangeUpdateQueries', TemplateCommands.RangeUpdateQueries, {})
vim.api.nvim_create_user_command('TZArray', TemplateCommands.ZArray, {})
vim.api.nvim_create_user_command('TSetUnion', TemplateCommands.SetUnion, {})
vim.api.nvim_create_user_command('TNodeIndexer', TemplateCommands.NodeIndexer, {})

