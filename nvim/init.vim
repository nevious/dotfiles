" --- Plugins Installation and configuration
call plug#begin()
	" NERDTree
	Plug 'scrooloose/nerdtree'
	let NERDTreeIgnore = ['\.pyc$', '__pycache__', '__init__.py']

	" colors
	Plug 'sainnhe/sonokai'

	" Telescope fuzzy finder and required dependency
	Plug 'nvim-telescope/telescope.nvim', {'version': '*'}
	Plug 'nvim-lua/plenary.nvim'

	" lualine
	Plug 'nvim-lualine/lualine.nvim'

	" Dev Icons
	Plug 'ryanoasis/vim-devicons'
	Plug 'nvim-tree/nvim-web-devicons'

	" Colored Paranthesis
	Plug 'luochen1990/rainbow'
	let g:rainbow_active = 1

	" CoC Auto Completion
	Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
	inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
	inoremap <silent><expr> <c-space> coc#refresh()
	" Show all diagnostics
	nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
	nmap <silent> <leader>d <Plug>(coc-definition)
	nmap <silent> <leader>i <Plug>(coc-references)
	nmap <silent> <leader>r <Plug>(coc-codeaction-refactor)

	" CSS Color preview
	Plug 'ap/vim-css-color'

	" Automatic closing of Paranthesis and Quotes
	Plug 'Raimondi/delimitMate'

	" makepdf
	Plug 'nevious/makepdf'

	" emmet for html Completion
	Plug 'mattn/emmet-vim'

	" HSL language support
	Plug 'halon/vim-hsl'

	" HCL Language Plugins
	Plug 'hashivim/vim-terraform'

	" MD Preview
	Plug 'brianhuster/live-preview.nvim'

	" wiki
	Plug 'echaya/neowiki.nvim'

	" treesitter language parser
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	" markdown render
	Plug 'MeanderingProgrammer/render-markdown.nvim'

call plug#end()

" --- Other configuration
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set mouse=a
set encoding=UTF-8
set termguicolors

" Show tabs and spaces
highlight SpecialKey guifg=#444444 ctermfg=lightGreen
set list listchars=tab:»\ ,trail:·,precedes:…,extends:…,nbsp:‗

" Use Tabs instead of spaces
set noet

" Load my lua configs
lua require('_telescope')
lua require('nevious')
lua require ('_wiki')
lua require('_treesitter')
lua require('_markdown')
