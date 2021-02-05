let mapleader = "\<Space>"

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nohlsearch
set hidden
set noerrorbells
set number
set relativenumber
set ignorecase
set smartcase
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
" Give more space for displaying messages
set cmdheight=2

set updatetime=50

set signcolumn=yes
set shortmess+=c
syntax on

call plug#begin("~/.config/neovim-plugged")
" LSP Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'

" Neovim Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Debuggger in vim (mind blown)
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

" Git integration
Plug 'stsewd/fzf-checkout.vim'
Plug 'tpope/vim-fugitive'
" FZF - fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

" Telescope - an FZF replacement
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'vim-utils/vim-man'
Plug 'dense-analysis/ale'
" Telescope requirements...
Plug 'nvim-lua/popup.nvim'

" New programming languages
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tweekmonster/gofmt.vim'


Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'vuciv/vim-bujo'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'dbeniamine/cheat.sh-vim'

" Colorschemes
Plug 'colepeters/spacemacs-theme.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'gruvbox-community/gruvbox'

call plug#end()
set cursorline
" https://github.com/rafi/awesome-vim-colorschemes
syntax on
colorscheme nord
let g:airline_theme='cobalt2'
let g:ale_linters = {'javascript': ['eslint']}



filetype plugin indent on
set autoindent
set timeoutlen=300
set encoding=utf8
set noshowmode
set hidden
set nowrap

" Permanent undo
set undodir=~/.vim-undo
set undofile
set nobackup
set noswapfile

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

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>


fun! ConfigTelescope() 
lua require('telescope').setup({defaults = {file_sorter = require('telescope.sorters').get_fzy_sorter}})

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
endfun

