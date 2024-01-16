local M = {}

M.nmap = function(lhs, rhs, opts)
    local options = {}
    if opts then
        options = opts
    end
    vim.keymap.set("n", lhs, rhs, options)
end

M.vmap = function(lhs, rhs, opts)
    local options = {}
    if opts then
        options = opts
    end
    vim.keymap.set("v", lhs, rhs, options)
end

return M
