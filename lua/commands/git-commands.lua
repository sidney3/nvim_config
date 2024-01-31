local M = {}

M.GitAdd = function()
    vim.cmd('wall|!git add -A')
end

M.GitCommit = function(args)
    vim.cmd('!git commit -m \"' .. args.args .. '\"')
end

M.GitPush = function(args)
    vim.cmd('!git push')
end

return M;
