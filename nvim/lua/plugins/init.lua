-- Testing lazy.nvim
return {
    'sainnhe/sonokai',
    'scrooloose/nerdtree',
    {
        'nvim-telescope/telescope.nvim', version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- optional but recommended
            -- { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
     },
    'nvim-lualine/lualine.nvim',
    'ryanoasis/vim-devicons',
    'nvim-tree/nvim-web-devicons',
    { 'neoclide/coc.nvim', branch = 'release', },
    'halon/vim-hsl',
    'hashivim/vim-terraform',
    'brianhuster/live-preview.nvim',
    'echaya/neowiki.nvim',
    { 'nvim-treesitter/nvim-treesitter', 
      lazy = false,
      build = ':TSUpdate'
    },
    'MeanderingProgrammer/render-markdown.nvim',
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
    'https://gitlab.com/HiPhish/rainbow-delimiters.nvim',
    'norcalli/nvim-colorizer.lua'
}
