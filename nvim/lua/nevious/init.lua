-- General Defaults
vim.o.number = true
vim.o.relativenumber = true
vim.o.autoindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.mouse=a
vim.o.encoding="UTF-8"
vim.o.expandtab = false

-- Highlight Tabs and Spaces
vim.o.termguicolors = true
vim.opt.list = true
vim.opt.listchars = {
  tab = "» ",
  trail = "·",
  precedes = "…",
  extends = "…",
  nbsp = "‗",
}

-- Lualine
require('lualine').setup {
    -- 'horizon' was set before.
    options = { theme = 'auto' }
}

-- Use tabs if python file already uses tabs
-- TBD

-- vim.cmd('colorscheme bluloco-dark')
vim.g.sonokai_stylej= "atlantis"
vim.cmd.colorscheme('sonokai')
