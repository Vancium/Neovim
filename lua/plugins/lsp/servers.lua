local M = {}

M.lua_ls = {
    setup = function()
        require("lspconfig").lua_ls.setup({
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
            settings = {}
        })
    end
}

return M
