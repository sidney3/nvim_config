local M = {}
local TEMPLATES_DIR = '~/.config/nvim/templates/'
M.BaseTemplate = function()
    vim.cmd('r ' .. TEMPLATES_DIR .. 'template.cpp')
end

return M
