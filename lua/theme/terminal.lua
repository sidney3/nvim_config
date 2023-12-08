
local M = {}

function M.setup()
    -- Terminal color settings
    vim.g.terminal_color_0 = '#1d2021'
    vim.g.terminal_color_1 = '#cc241d'
    -- Define the rest of the terminal colors...

    -- Optional: Set terminal GUI colors (if using Neovim in a GUI)
    -- vim.g.terminal_color_background = '#1d2021'
    -- vim.g.terminal_color_foreground = '#a89984'
end

return M
