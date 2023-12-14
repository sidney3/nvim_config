local M = {}

M.RunC = function()
    vim.cmd('w|!clang -Wall -Wextra -g % -o %< && ./%<')
end

M.RunCPP = function()
    vim.cmd('w|!clang++ -Wall -Wextra -g % -o %< && ./%< < in.txt')
end

M.RunPython = function()
    vim.cmd('w|!Python3 %')
end

return M
