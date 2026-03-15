-- General Defaults
vim.o.number = true
vim.o.relativenumber = true

-- Lualine
require('lualine').setup {
	-- 'horizon' was set before.
	options = { theme = 'auto' }
}

-- vim.cmd('colorscheme bluloco-dark')
vim.g.sonokai_stylej= "atlantis"
vim.cmd('colorscheme sonokai')
