local M = {}

M.ExpandDependencies = function()
    BUILD_PATH = "$HOME/personal/ws/HeaderExpansion/src/main.py"
    TEMPLATE_PATH = "$HOME/comp_programming_templates"
    vim.cmd("!Python3 " .. BUILD_PATH .. " " .. TEMPLATE_PATH .. " $PWD/%") 
end

M.RunCPP = function()
    vim.cmd('w|!clang++ -Wall -Wextra -std=c++17 -g % -o %< && ./%< < in.txt')
end

M.RunPython = function()
    vim.cmd('w|!Python3 %')
end


return M
