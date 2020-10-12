let mapleader = "\<Space>"

call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'vim-utils/vim-man'
Plug 'dense-analysis/ale'
" Neovim LSP Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'

" Telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim;

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tweekmonster/gofmt.vim'

call plug#end()

" https://github.com/rafi/awesome-vim-colorschemes
syntax on
colorscheme nord
let g:airline_theme='cobalt2'
let g:ale_linters = {'javascript': ['eslint']}



" BASE Settings
set number
set relativenumber
filetype plugin indent on
set autoindent
set timeoutlen=300
set encoding=utf8
set scrolloff=2
set noshowmode
set hidden
set nowrap
set nojoinspaces
set termguicolors

" Permanent undo
set undodir=~/.vim-undo
set undofile

set noswapfile

" Use wide tabs
set shiftwidth=4
set softtabstop=4
set tabstop=4
set noexpandtab

syntax on


" Proper search
set incsearch
set ignorecase
set smartcase

set vb t_vb= " No more beeps
set ttyfast
set lazyredraw
set diffopt+=iwhite " No whitespace in vimdiff
" Make diffing better: https://vimways.org/2018/the-power-of-diff/
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic




" <leader><leader> toggles between buffers
nnoremap <leader><leader> <c-^>
