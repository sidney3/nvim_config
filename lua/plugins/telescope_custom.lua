local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')

local function set_search_register(prompt_bufnr)
    local query = action_state.get_current_line()
    vim.fn.setreg('/', query)
    actions.close(prompt_bufnr)
end

return set_search_register
