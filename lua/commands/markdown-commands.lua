local M = {}
local TEMPLATES_DIR = '~/.config/nvim/templates/'

M.PrintTable = function(opts)
    -- opts.args is the string containing all the arguments
    local args = {}
    for arg in string.gmatch(opts.args, "%S+") do
        table.insert(args, arg)
    end

    local arg1 = args[1] or ""
    local arg2 = args[2] or ""

    vim.cmd('r' .. '!' .. TEMPLATES_DIR .. "markdown/table_maker " .. arg1 .. " " .. arg2)
end

return M
