-- My original coc config looked like this:
-- " CoC Auto Completion
-- Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
-- inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
-- inoremap <silent><expr> <c-space> coc#refresh()
-- " Show all diagnostics
-- nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
-- nmap <silent> <leader>d <Plug>(coc-definition)
-- nmap <silent> <leader>i <Plug>(coc-references)
-- nmap <silent> <leader>r <Plug>(coc-codeaction-refactor)
--

-- Helper opts for normal mappings
local opts = { silent = true }

-- ==========================
-- Insert mode mappings
-- ==========================

-- Enter: confirm completion if popup menu visible, otherwise insert newline
vim.keymap.set('i', '<CR>', function()
  return vim.fn['coc#pum#visible']() and vim.fn['coc#pum#confirm']() or "\n"
end, { expr = true, noremap = true, silent = true })

-- Ctrl-Space: manually trigger completion
vim.keymap.set('i', '<C-Space>', function()
  return vim.fn['coc#refresh']()
end, { expr = true, noremap = true, silent = true })

-- ==========================
-- Normal mode mappings
-- ==========================

-- Show all diagnostics in project
vim.keymap.set('n', '<Space>a', ':<C-u>CocList diagnostics<CR>', opts)

-- Go to definition
vim.keymap.set('n', '<Leader>d', '<Plug>(coc-definition)', opts)

-- Find references
vim.keymap.set('n', '<Leader>i', '<Plug>(coc-references)', opts)

-- Code actions / refactoring
vim.keymap.set('n', '<Leader>r', '<Plug>(coc-codeaction-refactor)', opts)
