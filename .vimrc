call plug#begin('~/.vim/plugged')
" Colorscheme
Plug 'nightsense/seabird'
" Plugins
Plug 'posva/vim-vue'
Plug 'sheerun/vim-polyglot'
Plug 'OrangeT/vim-csharp'
Plug 'mhinz/vim-signify'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

let $FZF_DEFAULT_COMMAND = 'ag --ignore "/public" -g ""'

" Jacob Zlogar " 
" 🌴
" 🌴
" 🌴
" 5/8/17

syntax on
syntax sync minlines=200
autocmd BufEnter * :syntax sync fromstart

" Colorscheme
colorscheme petrel
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
 set termguicolors
endif
" Colorscheme overrides 
hi Normal ctermbg=none guibg=none
hi NonText ctermbg=none guibg=none
hi LineNr ctermbg=none guibg=none
hi SignColum ctermbg=none guibg=none
hi DiffAdd guibg=none ctermbg=none ctermfg=120
hi DiffDelete guibg=none ctermbg=none ctermfg=167
hi DiffChange guibg=none ctermbg=none ctermfg=227

" Remap
cmap WQ wq
cmap Wq wq
cmap W w
cmap Q q

" Mappings
let mapleader="-"
map <leader>q :q!<cr>
map <leader>g :Commits<cr>
map <leader>s :Ag 
map <leader>f :Files<cr>
map <leader>b :Buffers<cr>
map <leader>) :g/^$/d<cr>
nnoremap <cr> :noh<cr>
nnoremap <Tab> :b#<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Misc
set mouse=a
set noswapfile
set number
set nowrap
set smarttab
set copyindent
set autoindent
set shiftround
set noerrorbells
set shiftwidth=2
set softtabstop=2
set expandtab
set clipboard=unnamed
set backspace=indent,eol,start
set lcs=tab:.\ ,trail:·,eol:¬,nbsp:_,

" Php/Blade
autocmd FileType php setlocal shiftwidth=4 tabstop=4
autocmd FileType blade setlocal shiftwidth=2 softtabstop=2

" C#/.Net
autocmd FileType cs setlocal shiftwidth=4 tabstop=4
autocmd FileType cshtml setlocal shiftwidth=4 tabstop=4
