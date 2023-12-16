local M = {}

local ExpandDependencies = function()
    BUILD_PATH = "$HOME/personal/ws/HeaderExpansion/src/main.py"
    TEMPLATE_PATH = "$HOME/comp_programming_templates"
    vim.cmd("!Python3 " .. BUILD_PATH .. " " .. TEMPLATE_PATH .. " $PWD/%") 
end

M.RunC = function()
    vim.cmd('w|!clang -Wall -Wextra -g % -o %< && ./%<')
end

M.RunCPP = function()
    vim.cmd('w|!clang++ -Wall -Wextra -g % -o %< && ./%< < in.txt')
end

M.RunPython = function()
    vim.cmd('w|!Python3 %')
end

M.ExpandAndRunCPP = function()
    ExpandDependencies()
    M.RunCPP()
end


return M
