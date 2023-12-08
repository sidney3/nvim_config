
local M = {}

function M.setup()
    vim.cmd('colorscheme onedark')  
    vim.defer_fn(function()
        vim.cmd('highlight Comment ctermfg=LightGrey guifg=LightGrey')
        vim.cmd('highlight LineNr ctermfg=Grey guifg=Grey')
    end, 0)
end

return M
