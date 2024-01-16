local utils = require("Vancium.utils.mappings")

local nmap = utils.nmap
local vmap = utils.vmap

-- Normal Mode (General)

nmap("<C-e>", "<CMD> Ex <CR>", { desc = "[E]xplore"})
nmap("<C-c>", "ESC", { desc = "[E]scape" })
nmap("<C-d>", "<C-d>zz", { desc = "Vertical movement keeps cursor in the center"})
nmap("<C-u>", "<C-u>zz", { desc = "Vertical movement keeps cursor in the center"})

nmap("<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]] ,{ desc = "[R]eplace [W]ord" })

nmap("n", "nzzzv", { desc = "Search Movement keeps cursor in the center"})
nmap("N", "Nzzzv", { desc = "Search Movement keeps cursor in the center"})

-- Normal Mode (Text Manipulation)
nmap(">", ">Gv>", { desc = "[I]ndent Line"})
nmap("<", "<Gv<", { desc = "[O]utdent Line"})


-- Visual Mode (General)

vmap(">", ">gv", { desc = "[I]ndent Lines" })
vmap("<", "<gv", { desc = "[O]utdent Lines" })

vmap("J", ":m '>+1<CR>gv=gv", { desc = "Move up"})
vmap("K", ":m '<-2<CR>gv=gv", { desc = "Move down"})


