call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'shaond/vim-guru'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'josuegaleas/jay'
Plug 'flazz/vim-colorschemes'
Plug 'mxw/vim-jsx'
Plug 'dikiaap/minimalist'
Plug 'tpope/vim-eunuch'
Plug 'posva/vim-vue'
Plug 'colepeters/spacemacs-theme.vim'

call plug#end()

if (has("termguicolors"))
  set termguicolors
endif
set background=dark
colorscheme spacemacs-theme
syntax on

set nocompatible
set fillchars+=vert:\ 
scriptencoding=utf-8
set visualbell
set noerrorbells
set autowrite
set modelines=1
set title
set background=dark
set t_Co=256
set list
set number
set showmode
set mouse=a
set number
set ruler
set showmode
set wrap
set scrolloff=3
set lcs=tab:.\ ,trail:·,eol:¬,nbsp:_,
set splitbelow
set splitright
set expandtab
set shiftwidth=4
set backspace=indent,eol,start
set softtabstop=4
set autoindent
set copyindent
set tabstop=4
set smarttab
set wildmenu
set ignorecase
set clipboard=unnamed
set smartcase
set timeoutlen=1000 ttimeoutlen=0
set backup
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set laststatus=2
set updatetime=250

highlight SignColumn ctermfg=none ctermbg=none
highlight LineNr ctermfg=none ctermbg=none
highlight GitGutterAdd ctermbg=none
highlight GitGutterChange ctermbg=none
highlight GitGutterDelete ctermbg=none
highlight GitGutterChangeDelete ctermbg=none
highlight StatusLine ctermbg=none

let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
let g:php_cs_fixer_level = "psr2"
let mapleader="-"
let g:jsx_ext_required = 0
let g:netrw_liststyle=3
let g:gitgutter_max_signs = 500
let g:gitgutter_sign_column_always = 1
let g:gitgutter_override_sign_column_highlight = 0

map <leader>s :Ag 
map <leader>f :Files<cr>
map <leader>b :Buffers<cr>
map <leader>t :Tags<cr>
map <leader>g :Gbrowse<cr>
map <leader>G :Gcommit<cr>
map <leader>B :b#<cr>
map <leader>4 :GitGutterToggle<cr>
map <leader>5 :GitGutterLineHighlightsToggle<cr>

nnoremap <CR> :noh<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader><esc> :q!<CR>
nnoremap <leader>q :wq<CR>
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L g_
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

if exists("&undodir")
    set undodir=~/.vim/undo
endif
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
