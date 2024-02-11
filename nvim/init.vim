" --- Plugins Installation and configuration
call plug#begin()
	" NERDTree
	Plug 'scrooloose/nerdtree'
	let NERDTreeIgnore = ['\.pyc$', '__pycache__', '__init__.py']
	let g:webdevicons_conceal_nerdtree_brackets=0

	" gruvbox theme
	Plug 'morhetz/gruvbox'
	let g:gruvbox_contrast_dark = 'hard'

	" ctrlp - Fuzzy finder
	Plug 'ctrlpvim/ctrlp.vim'

	" Airline statusbar
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	if !exists('g:airline_symbols')
		let g:airline_symbols = {}
	endif

	let g:airline_theme = 'gruvbox'
	let g:airline_contrast_dark = 'hard'
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
	let g:airline_symbols.branch = ''
	let g:airline_symbols.readonly = ''
	let g:airline_symbols.linenr = '☰'
	let g:airline_symbols.maxlinenr = ''
	let g:airline_symbols.dirty='⚡'

	" Dev Icons
	Plug 'ryanoasis/vim-devicons'

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

	" Markdown preview
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

	" makepdf
	Plug 'nevious/makepdf'

	" emmet for html Completion
	Plug 'mattn/emmet-vim'

	" HSL language support
	Plug 'halon/vim-hsl'

call plug#end()

" --- Other configuration
set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set mouse=a
set encoding=UTF-8
set termguicolors
colorscheme gruvbox

" Show tabs and spaces
highlight SpecialKey guifg=#444444 ctermfg=lightGreen
set list listchars=tab:»\ ,trail:·,precedes:…,extends:…,nbsp:‗

" Use Tabs instead of spaces
set noet

" Load inital lua config
lua require('local')
