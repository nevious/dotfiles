set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/plugins")

" vundle plugin
Plugin 'VundleVim/Vundle.vim'

" vim-jedi autocompletion
Plugin 'davidhalter/jedi-vim'

" R
Plugin 'jalvesaq/Nvim-R'

" ctrl p
Plugin 'ctrlpvim/ctrlp.vim'

" colored parantheses
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1

" airline status bar
Plugin 'vim-airline/vim-airline'
" Not sure why this is needed, but glyphs don't work out of the box here
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '☰'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.maxlinenr = '㏑'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = 'Ꞩ'
"let g:airline_symbols.notexists = 'Ɇ'
"let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

" airline status bar themes
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='gruvbox'
let g:gruvbox_contrast_dark = 'medium'

" git stuff
Plugin 'tpope/vim-fugitive'

" Raimondi/delimitMate - automatic closing of parantheses and quotes
Plugin 'Raimondi/delimitMate' 

" flake 8
Plugin 'nvie/vim-flake8'
let g:syntastic_python_flake8_args='--ignore=F821,E501,W191'

" auto completion
Plugin 'Shougo/deoplete.nvim'
let g:deoplete#enable_at_startup = 1

" snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
let g:snipMate = { 'snippet_version' : 1 }

" nerdtree
Plugin 'scrooloose/nerdtree'
" get rid of pyc files in nerdtree
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '__init__.py']

" Plugin vimwiki
Plugin 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path':'~/wiki/vimwiki', 'path_html':'~/wiki/vimwiki_html/', 'syntax': 'markdown', 'ext': '.md'}]

" my make pdf plugin
Plugin 'nevious/makepdf'

" Colorscheme for gruvbox (includes its own airline theme)
Plugin 'morhetz/gruvbox'

" ALE linter
Plugin 'dense-analysis/ale'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'

" yaml folding
Plugin 'pedrohdz/vim-yaml-folds'
set foldlevelstart=20

" ws indentPlugin
Plugin 'Yggdroot/indentLine'

call vundle#end()
filetype plugin indent on

set laststatus=2

"bash style completion
set wildmode=longest,list
set wildmenu

set completeopt=menuone,menu,longest,preview

" turn on the filetype plugins
filetype on
filetype plugin on
filetype indent on

if has("gui_running")
	set mouse=a
	"colorscheme colorsbox-stbright
	colorscheme srcery
	set background=dark
	set guioptions-=T
	set guioptions-=m
	set guifont=DejaVu\ Sans\ Mono\ 9
	set number
else
	set number
	set background=dark
	set mouse=a
	"colorscheme colorsbox-stbright
	colorscheme gruvbox
	set termguicolors
	set tenc=utf8
end

" encoding
set enc=utf-8

" Set syntax on
syntax on

" show the command being typed
set showcmd

set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors


if has("nvim")
 tnoremap <Esc><Esc><Esc> <C-\><C-n>
endif


let base16colorspace=256
set t_Co=256
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm

" incremental search and replace
set inccommand=split

" show tabs and spaces
highlight SpecialKey guifg=#444444 ctermfg=lightGreen
set list listchars=tab:»\ ,trail:·,precedes:…,extends:…,nbsp:‗

" more basic settings such
set updatetime=200
set tabstop=4
set autoindent
set shiftwidth=4
set sts=4
set noexpandtab

" workaround: https://github.com/neovim/neovim/issues/3786
autocmd FileType python setlocal tabstop=4 noexpandtab

" make yaml great (not gonna say 'again')
autocmd BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
