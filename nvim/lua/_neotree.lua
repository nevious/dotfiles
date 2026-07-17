require('neo-tree').setup({})

vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>')
vim.api.nvim_create_user_command("Tree", function(opts)
        if opts.args ~= "" then
            vim.cmd("Neotree dir=" .. opts.args)
        else
            vim.cmd("Neotree toggle")
        end
    end,
    { nargs = '?', complete = 'file' }
)
