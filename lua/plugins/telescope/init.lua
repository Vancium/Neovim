return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"piersolenski/telescope-import.nvim",
	},
	config = function()
		require("telescope").load_extension("import")
		require("telescope").setup({
			extensions = {
				import = {
					-- Add imports to the top of the file keeping the cursor in place
					insert_at_top = true,
					-- Support additional languages
					custom_languages = {
						{
							-- The regex pattern for the import statement
							regex = [[^(?:import(?:[\"'\s]*([\w*{}\n, ]+)from\s*)?[\"'\s](.*?)[\"'\s].*)]],
							-- The Vim filetypes
							filetypes = { "typescript", "typescriptreact", "javascript", "react" },
							-- The filetypes that ripgrep supports (find these via `rg --type-list`)
							extensions = { "js", "ts" },
						},
					},
				},
			},
		})

        -- Telescope Keymaps
        local nmap = require("Vancium.utils.mappings").nmap
        local builtin = require("telescope.builtin")

        nmap("<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
        nmap("<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
        nmap("<leader>ft", function() vim.cmd([[ Telescope ]]) end, { desc = "[F]ind [F]iles" })
        nmap("<leader>en", function() require("plugins.telescope.custom.pickers").edit_neovim() end, { desc = "[E]dit [N]eovim" })
        nmap("<leader>fs", function() builtin.grep_string({ search = vim.fn.input("Grep: ")}) end, { desc = "[E]dit [N]eovim" })
	end,
}
