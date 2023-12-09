local GitCommands = require('commands.git-commands')


vim.api.nvim_create_user_command('GA', GitCommands.GitAdd, {})
vim.api.nvim_create_user_command('GC', GitCommands.GitCommit, {
    nargs = 1
})
vim.api.nvim_create_user_command('GP', GitCommands.GitPush, {})
