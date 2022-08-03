let g:python3_host_prog='/opt/homebrew/bin/python3'
call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-commentary'
Plug 'rizzatti/dash.vim'
" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'
Plug 'machakann/vim-highlightedyank'
".NET
Plug 'OmniSharp/omnisharp-vim'
" javascript
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'vim-erlang/vim-erlang-runtime'
" erlang
Plug 'vim-erlang/vim-erlang-omnicomplete'
" others development
Plug 'cespare/vim-toml'
Plug 'plasticboy/vim-markdown'
Plug 'elzr/vim-json'
Plug 'fatih/vim-hclfmt'
Plug 'zah/nim.vim'
Plug 'vim-scripts/nginx.vim'
Plug 'rust-lang/rust.vim'
Plug 'diepm/vim-rest-console'
Plug 'tomtom/tlib_vim'
" navigation
Plug 'preservim/nerdtree'
Plug 'vim-scripts/mru.vim'
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'jlanzarotta/bufexplorer'
Plug 'Asheq/close-buffers.vim'
Plug 'mileszs/ack.vim'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" edit
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'michaeljsmith/vim-indent-object'
" tools
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" scheme
Plug 'vim-scripts/peaksea' 
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'cocopon/iceberg.vim'
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'sonph/onehalf'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'glepnir/oceanic-material'
Plug 'wadackel/vim-dogrun'
Plug 'rafalbromirski/vim-aurora'
Plug 'yuttie/hydrangea-vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'tomasiser/vim-code-dark'
Plug 'arcticicestudio/nord-vim'
Plug 'w0ng/vim-hybrid'
Plug 'AlessandroYorba/Despacio' 
" nightsense was the best... what happened to them?
" Plug 'nightsense/cosmic_latte'
" Plug 'nightsense/stellarized'
" Plug 'nightsense/snow'
Plug 'rafi/awesome-vim-colorschemes'

call plug#end()

