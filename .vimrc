" Plugins
call plug#begin('~/.vim/plugged')
Plug 'mhartington/oceanic-next'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'neomake/neomake'
Plug 'posva/vim-vue'
Plug 'sheerun/vim-polyglot'
call plug#end()

" Syntax
syntax on
autocmd BufEnter * :syntax sync fromstart

" Binds
let mapleader="-"
map <leader>g :Commits<cr>
map <leader>s :Ag 
map <leader>f :Files<cr>
map <leader>b :Buffers<cr>
nnoremap <cr> :noh<cr>
nnoremap <Tab> :b#<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
 set termguicolors
endif

" Highlight
autocmd ColorScheme * highlight LineNr guibg=none ctermbg=none
autocmd ColorScheme * highlight NonText ctermbg=none guibg=none

" Some Commands
cmap WQ wq
cmap Wq wq
cmap W w
cmap Q q

" Colorscheme
colorscheme petrel

" Linting
autocmd! BufWritePost * Neomake

" Gutter
let g:gitgutter_max_signs = 500
let g:gitgutter_sign_column_always = 1
let g:gitgutter_override_sign_column_highlight = 0

" Vue
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

" Blade
autocmd BufRead,BufNewFile *.blade.php setlocal filetype=html


" Misc.
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
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
