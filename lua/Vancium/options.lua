local options = {
	opt = {
		number = true,
		relativenumber = true,

		cursorline = true,
		cursorlineopt = "number",
		termguicolors = true,
		splitright = true,
		splitbelow = true,

		tabstop = 4,
		softtabstop = 4,
		shiftwidth = 4,
		expandtab = true,
		smartindent = true,
		wrap = false,
		clipboard = "unnamedplus",

		swapfile = false,
		backup = false,
		undodir = os.getenv("HOME") .. "/.vim/undodir",
		undofile = true,

		updatetime = 50,

		ignorecase = true,
		smartcase = true,
		hlsearch = true,
		completeopt = { "noselect", "menu", "menuone" },

		winhighlight = "Normal:Normal,FloatBorder:Normal",
	},
	g = {
		mapleader = " ",
		maplocalleader = " ",
	},
}


for scope, values in pairs(options) do
	for opt, setting in pairs(values) do
		vim[scope][opt] = setting
	end
end
