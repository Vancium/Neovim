local nmap  = require("Vancium.utils.mappings").nmap


nmap("<leader>en", function() require("plugins.telescope.custom.pickers").edit_neovim() end, { desc = "[E]dit [N]eovim" })

