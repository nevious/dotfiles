-- Format markdown table with pandoc
vim.keymap.set('v', '<leader>t', '!pandoc -t markdown-simple_tables<CR>', {silent = true, desc = 'Align selected md table using pandoc'})
