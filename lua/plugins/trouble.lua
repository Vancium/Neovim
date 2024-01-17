return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
    config = function()
        local nmap = require("Vancium.utils.mappings").nmap
        local trouble = require("trouble")
        nmap("<C-q>", trouble.toggle, { desc = "[T]rouble"})
        nmap("<C-q>n", function() trouble.next({ skip_groups = true, jump = true}) end, { desc = "[T]rouble [N]ext"})
        nmap("<C-q>p", function() trouble.previous({ skip_groups = true, jump = true}) end, { desc = "[T]rouble [N]ext"})

    end
}
