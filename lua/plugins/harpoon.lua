return {
	"ThePrimeagen/harpoon",
	lazy = false,
    config = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        local nmap = require("Vancium.utils.mappings").nmap

        nmap("<leader>ha", mark.add_file, { desc = "[H]arpoon [A]dd"})
        nmap("<leader>hh", ui.toggle_quick_menu, { desc = "[H]arpoon [O]pen"})
        nmap("]", ui.nav_next, { desc = "[H]arpoon [N]ext"})
        nmap("[", ui.nav_next, { desc = "[H]arpoon [P]rev"})
    end
}
