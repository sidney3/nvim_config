local M = {}
local TEMPLATES_DIR = '~/.config/nvim/templates/'


M.CPPBaseCompileFlags = function()
    vim.cmd('!cp ' .. TEMPLATES_DIR ..'compilation_templates/cpp/base_compile_flags.txt .')
end

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

M.GetDivisors = function()
    vim.cmd('r ' .. TEMPLATES_DIR .. 'comp_programming_templates/math/get_divisors.cpp')
end

M.MRQ = function()
    vim.cmd('r ' .. TEMPLATES_DIR .. 'comp_programming_templates/range_queries/max_range_query.cpp')
end

M.RangeUpdateQueries = function()
    vim.cmd('r ' .. TEMPLATES_DIR .. 'comp_programming_templates/range_queries/range_update_queries.cpp')
end

M.Fenwick = function()
    vim.cmd('r ' .. TEMPLATES_DIR .. 'comp_programming_templates/range_queries/fenwick.cpp')
end

M.ZArray = function()
    vim.cmd('r ' .. TEMPLATES_DIR .. 'comp_programming_templates/strings/Z-array.cpp')
end


M.SetUnion = function()
    vim.cmd('r ' .. TEMPLATES_DIR .. 'comp_programming_templates/graphs/set_union.cpp')
end

M.NodeIndexer = function()
    vim.cmd('r ' .. TEMPLATES_DIR .. 'comp_programming_templates/trees/node_indexer.cpp')
end

return M


