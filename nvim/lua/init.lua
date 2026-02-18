-- Format markdown table with pandoc - OLD
vim.keymap.set('v', '<leader>t', '!pandoc -t markdown-simple_tables<CR>', {silent = true, desc = 'Align selected md table using pandoc'})

-- use ripgrep
vim.opt.grepprg = "rg --vimgrep"
vim.opt.grepformat = "%f:%l:%c:%m"
