syntax enable 

filetype plugin indent on

let mapleader = ","

set nocompatible

set ai
set autoindent
set autoread
" set background="dark"
set backspace=eol,start,indent
set cc=80
set clipboard=unnamedplus
set cmdheight=1
set cursorline
set encoding=utf8
set expandtab
set foldcolumn=2
set history=200
set hlsearch
set ignorecase
set incsearch
set laststatus=0
set lbr
set magic
set mouse=a
set nobackup
set noerrorbells
set noswapfile
set nofoldenable
set novisualbell
set number
set shiftwidth=2
set showmatch               
set si
set smartcase
set so=4
set softtabstop=2
set tabstop=2
set ttyfast
set tw=500
set wildmode=longest,list

set t_Co=256

nmap <leader>s :w!<cr>
map <space> :noh<cr>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>ss :setlocal spell!<cr>

map <C-f> :Telescope find_files<CR>
map <C-g> :Telescope live_grep<CR>

map <leader><space> :NERDTreeToggle<CR>
map <Leader>ll :Limelight!!<CR>
map <Leader>gy :Goyo<CR>

try
    " colorscheme mountaineer 
    colorscheme minimalist 
catch
endtry

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='tomorrow'
" set termguicolors

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cs_checkers = ['code_checker']

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.3
