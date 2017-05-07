call plug#begin('~/.vim/plugged')
" Colorscheme
Plug 'nightsense/seabird'
" Plugins
Plug 'posva/vim-vue'
Plug 'neomake/neomake'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

let $FZF_DEFAULT_COMMAND = 'ag --ignore "/public" -g ""'

" Jacob Zlogar " 🌴
syntax on
syntax sync minlines=200
autocmd BufEnter * :syntax sync fromstart

" Colorscheme
colorscheme petrel
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
 set termguicolors
endif
" 
hi Normal ctermbg=none guibg=none
hi LineNr ctermbg=none guibg=none
hi NonText ctermbg=none guibg=none

" Remap
cmap WQ wq
cmap Wq wq
cmap W w
cmap Q q

" Mappings
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

" Neomake
autocmd! BufWritePost * Neomake
let g:neomake_vue_eslint_maker = {
    \ 'args': ['eslint-config-vue eslint-plugin-vue'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    \ }
let g:neomake_vue_enabled_makers = ['eslint']

" GitGutter
let g:gitgutter_max_signs = 500
let g:gitgutter_sign_column_always = 1
let g:gitgutter_override_sign_column_highlight = 0

" Misc
set number
set nowrap
set smarttab
set copyindent
set autoindent
set noerrorbells
set shiftwidth=2
set softtabstop=2
set clipboard=unnamed
set backspace=indent,eol,start
set lcs=tab:.\ ,trail:·,eol:¬,nbsp:_,

" Php/Blade
autocmd FileType *.blade.php setlocal filetype=html
autocmd FileType php setlocal shiftwidth=4 softtabstop=4
autocmd FileType blade setlocal shiftwidth=2 softtabstop=2

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
