" Plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'crusoexia/vim-monokai'
Plug 'neomake/neomake'
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
Plug 'crusoexia/vim-javascript-lib'
Plug 'StanAngeloff/php.vim'
Plug 'nvie/vim-flake8'

call plug#end()

" Binds
let mapleader="-"
map <leader>s :Ag 
map <leader>f :Files<cr>
map <leader>b :Buffers<cr>
map <leader>g :Gbrowse<cr>
nnoremap <Tab> :b#<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Some Commands
cmap WQ wq
cmap Wq wq
cmap W w
cmap Q q

" Linting
autocmd! BufWritePost * Neomake

" Highlight
autocmd ColorScheme * highlight LineNr guibg=none ctermbg=none
autocmd ColorScheme * highlight SignColumn guibg=none ctermbg=none
autocmd ColorScheme * highlight Normal ctermbg=none guibg=none
autocmd ColorScheme * highlight NonText ctermbg=none guibg=none
autocmd ColorScheme * highlight StatusLine guibg=none ctermbg=none
autocmd ColorScheme * highlight GitGutterAdd guifg=green guibg=none
autocmd ColorScheme * highlight GitGutterChange guifg=cyan guibg=none
autocmd ColorScheme * highlight GitGutterDelete guifg=red guibg=none
autocmd ColorScheme * highlight GitGutterChangeDelete guifg=yellow guibg=none

" Gutter
let g:gitgutter_max_signs = 500
let g:gitgutter_sign_column_always = 1
let g:gitgutter_override_sign_column_highlight = 0

" Vue
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue

" Blade
autocmd BufRead,BufNewFile *.blade.php setlocal filetype=html

" Syntax
syntax on

" Colorscheme
colorscheme monokai

" Misc.
set nowrap
set lcs=tab:.\ ,trail:·,eol:¬,nbsp:_,
set number
set clipboard=unnamed

" Bells
set visualbell
set noerrorbells

" Formatting
autocmd FileType php setlocal shiftwidth=4 softtabstop=4
autocmd FileType blade setlocal shiftwidth=2 softtabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
set autoindent
set copyindent
set shiftround
set smarttab
set backspace=indent,eol,start

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
