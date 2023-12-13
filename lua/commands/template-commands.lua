local M = {}
local TEMPLATES_DIR = '~/.config/nvim/templates/'
M.Base = function()
    vim.cmd('r ' .. TEMPLATES_DIR .. 'comp_programming_templates/template.cpp')
end

M.FastPow = function()
    vim.cmd('r ' .. TEMPLATES_DIR .. 'comp_programming_templates/math/fast_pow.cpp')
end

M.MakePrimes = function()
    vim.cmd('r ' .. TEMPLATES_DIR .. 'comp_programming_templates/math/make_primes.cpp')
end

M.GetPF = function()
    vim.cmd('r ' .. TEMPLATES_DIR .. 'comp_programming_templates/math/get_pf.cpp')
end



return M


