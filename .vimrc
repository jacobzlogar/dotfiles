call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/The-NERD-tree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'shaond/vim-guru'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'jwalton512/vim-blade'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
Plug 'joshdick/airline-onedark.vim'
call plug#end()

set nocompatible
set fillchars+=vert:\ 
set visualbell
set noerrorbells
set autowrite
set modelines=1
set title
syntax on
colorscheme onedark
set background=dark
set t_Co=256
set list
set mouse=a
set number
set ruler
set showmode
set wrap
set scrolloff=3
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set splitbelow
set splitright
set softtabstop=4
set expandtab
set shiftwidth=4
set backspace=indent,eol,start
set autoindent
set copyindent
set tabstop=4
set smarttab
let g:php_cs_fixer_level = "psr2"
set wildmenu
set ignorecase
set clipboard=unnamed
set smartcase
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
set timeoutlen=1000 ttimeoutlen=0
let mapleader="-"
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
let g:netrw_liststyle=3
let g:airline_powerline_fonts = 1
nnoremap <CR> :noh<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader><esc> :q!<CR>
nnoremap <leader>q :wq<CR>
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L g_
map <leader>c :w !pbcopy<CR>
map <leader>s :Ag <cr>
map <leader>f :Files<cr>
map <leader>b :Buffers<cr>
map <leader>t :Tags<cr>
map <leader>g :Gbrowse<cr>
map <leader>G :Gcommit<cr>
map <leader>B :b#<cr>
map <leader>` :NERDTreeToggle<cr>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
set backup
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

