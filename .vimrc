"""""""""""""""""""""""""""""
"	ViM - Configuration		"
"   Author - ttzhou			"
"	Rev - 0.1				"
"	Date - Sep 22, 2014		"
"							"
"""""""""""""""""""""""""""""

"" Hotkeys {

	let mapleader = ","

    " Reload VIMRC
    map <leader>r :source $MYVIMRC<CR>

	inoremap ;; <ESC>
	vnoremap ;; <ESC>
	nnoremap ;; <ESC>

	" Splits
	nnoremap <C-j> <C-w><C-j>
	nnoremap <C-k> <C-w><C-k>
	nnoremap <C-h> <C-w><C-h>
	nnoremap <C-l> <C-w><C-l>

	set splitbelow
	set splitright

	" Folds
	noremap <leader>f zf
	noremap <Space> za

	" Save
	map <C-s> :w!<CR><CR>
    cmap w!! w !sudo tee > /dev/null %

	nmap <C-w>m :MRU<CR>
	nmap <C-e> :NERDTreeToggle<CR>
	nmap <leader>e :NERDTreeFind<CR>

	" Movement {

	nmap $ g$
	nmap 0 g0
	vmap $ g$
	vmap 0 g0

	nmap j gj
	nmap k gk
	vmap j gj
	vmap k gk

	map <C-a> <Home>
	map <C-x> <End>

	" }

"" }

"" Plugins {

	" Pathogen {
	call pathogen#infect()
	call pathogen#helptags()
	" }

	" vim-indent-guides {

	let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'tex', 'html']
	let g:indent_guides_guide_size = 1

	"}

	" MRU {
	let MRU_Max_Entries = 10000
	" }

	" Airline {
	if !exists('g:airline_symbols')
		let g:airline_symbols = {}
	endif

    if has('gui_running')
		let g:airline_powerline_fonts=1
		let g:airline_theme='powerlineish'
		"let g:airline_left_sep = ''
		"let g:airline_right_sep = ''
		let g:airline#extensions#syntastic#enabled = 1
	else
		let g:airline_powerline_fonts=1
		let g:airline_left_sep = ''
		let g:airline_right_sep = ''
		let g:airline_theme='powerlineish'
		"let g:airline_symbols.linenr = '␤'
		let g:airline#extensions#syntastic#enabled = 1
	endif

	let g:airline#extensions#default#layout = [
		\ [ 'a', 'b', 'c' ],
		\ [ 'x', 'y', 'z' ]
		\ ]
	" }

    " Emmet {
	let g:emmet_html5 = 0
    " }

	" ViM-Indent {
	    let g:indent_guides_auto_colors = 1
	    let g:indent_guides_start_level = 2
	    let g:indent_guides_guide_size = 1
	" }

	" EasyAlign {
		" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
		vmap <Enter> <Plug>(EasyAlign)
		" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
		nmap <Leader>a <Plug>(EasyAlign)
	" }

    let mapleader=","
    let maplocalleader=","

	autocmd BufAdd,BufEnter,BufWinEnter,BufNew * let maplocalleader=","
	autocmd BufAdd,BufEnter,BufWinEnter,BufNew * map <LocalLeader> ,
	autocmd BufLeave,BufWinLeave *.tex LatexmkClean

"" }

"" General Config {

	set nocompatible	"be iMproved
	set shortmess=I		"Sorry Brahm

	set hidden
    set autochdir
	set lazyredraw
	set ttyfast

	set backspace=2
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4	"Sorry Linus

	"Backups are for pussies
	set nobackup nowb noswapfile
	set history=10000

	set splitbelow
	set splitright

	set smartcase
	set smarttab
	set nostartofline
    set noshowmode      "hide mode status
	set modelines=5

	set viminfo+=n~/.vim/.viminfo "change viminfo location

    "AutoCmds

"" }

"" General Appearance {

	set number 				" turn on line numbers and highlight colors
	set ruler 				" Always show current positions along the bottom
	set showcmd 			" show the command being typed
	set nocursorcolumn
	set nocursorline
	set showmatch
	set laststatus=2
	set encoding=utf-8

	filetype on
	filetype plugin indent on

	syntax enable

	" Colors {
	if has('gui_running') "gViM colors
		colorscheme ttz
	else "Terminal colors
		colorscheme cottonmouse
	endif
	" }

	" gViM {
    "set guifont=Monaco\ for\ Powerline\ 10
	set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline\ 9
    "set guifont=Source\ Code\ Pro\ for\ Powerline\ 11
    "set guifont=Monaco\ for\ Powerline\ 10
	set guioptions-=m
	set guioptions-=T
	set guioptions-=r
	set guioptions-=L
	" }

"" }
