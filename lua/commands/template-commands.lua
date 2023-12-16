local M = {}
local TEMPLATES_DIR = '~/.config/nvim/templates/'

M.Base = function()
    vim.cmd('r ' .. TEMPLATES_DIR .. 'base_comp_programming.cpp')
end

return M


