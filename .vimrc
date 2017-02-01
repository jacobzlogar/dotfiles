" Plugins
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
Plug 'vim-syntastic/syntastic'
Plug 'jwalton512/vim-blade'

call plug#end()

" Syntastic Settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_scss_checkers = 0

" Vue Options
let g:syntastic_vue_checkers = ['eslint']

" Golang Options
let g:syntastic_go_checkers = ['gofmt']

" Blade Options
let g:syntastic_blade_checkers = ['blade']

" Colorscheme
colorscheme minimalist

" Highlight
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight NonText ctermbg=none

" Syntax
syntax on

" Formatting
set expandtab
set softtabstop=2
set shiftwidth=2
set shiftround
set autoindent
set copyindent
set smarttab
set backspace=indent,eol,start

" Php Formatting
autocmd FileType php setlocal shiftwidth=4 softtabstop=4

" Blade Template Formatting
autocmd FileType blade setlocal shiftwidth=2 softtabstop=2

" Vue Formatting
autocmd FileType vue setlocal shiftwidth=2 softtabstop=2

" Vertical Spacing Character
set fillchars+=vert:\| 

" Script Encoding
scriptencoding=utf-8

" Bells
set visualbell
set noerrorbells

" Gutter
hi SignColumn ctermfg=none ctermbg=none
hi LineNr ctermfg=none ctermbg=none
hi GitGutterAdd ctermfg=blue ctermbg=none
hi GitGutterChange ctermfg=yellow ctermbg=none
hi GitGutterDelete ctermfg=red ctermbg=none
hi GitGutterChangeDelete ctermbg=none
set relativenumber
let g:gitgutter_max_signs = 500
let g:gitgutter_sign_column_always = 1
let g:gitgutter_override_sign_column_highlight = 0

" Statusline Options
hi Statusline ctermbg=none
set modelines=1
set title
set number
set showmode
set showmode
set ruler

" To-Do
set nowrap
set scrolloff=3
set lcs=tab:.\ ,trail:·,eol:¬,nbsp:_,
set splitbelow
set splitright
set wildmenu
set ignorecase
set smartcase
set timeoutlen=1000 ttimeoutlen=0
set laststatus=2
set updatetime=250

" Backups/swaps
set backupdir=~/.vim/backups
set directory=~/.vim/swaps

" Filetype
filetype plugin indent on

" Misc
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
let g:php_cs_fixer_level = "psr2"
let mapleader="-"
let g:jsx_ext_required = 0
let g:netrw_liststyle=3
set nocompatible
set list
set mouse=a
set clipboard=unnamed

" Mapping
map <leader>s :Ag 
map <leader>f :Files<cr>
map <leader>b :Buffers<cr>
map <leader>t :Tags<cr>
map <leader>g :Gbrowse<cr>
map <leader>G :Gcommit<cr>
map <leader>B :b#<cr>
map <leader>2 :GitGutterToggle<cr>
map <leader>3 :GitGutterLineHighlightsToggle<cr>


nnoremap <leader>= :call Indent()<CR>
nnoremap <Tab> :b#<CR>
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

" Undo
if exists("&undodir")
    set undodir=~/.vim/undo
endif
