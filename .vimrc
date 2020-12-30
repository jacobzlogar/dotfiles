call plug#begin('~/.vim/plugged')
" Colorscheme
Plug 'nightsense/seabird'
" Plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'sheerun/vim-polyglot'
Plug 'mhinz/vim-signify'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf.vim'
Plug 'noahfrederick/vim-laravel'
Plug 'StanAngeloff/php.vim'
Plug 'ajh17/VimCompletesMe'
Plug 'jwalton512/vim-blade'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

let $FZF_DEFAULT_COMMAND = 'ag --ignore "/public" --ignore "node_modules" -g ""'

" Jacob Zlogar "
" 🌴
" 🌴
" 🌴
" 5/8/17
set updatetime=100
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
highlight ALEWarningSign guifg=cyan
highlight ALEErrorSign guifg=yellow

" ale symbols
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_sign_column_always = 1
let g:php_syntax_extensions_enabled = ["bcmath", "bz2", "core", "curl", "date", "dom", "ereg", "gd", "gettext", "hash", "iconv", "json", "libxml", "mbstring", "mcrypt", "mhash", "mysql", "mysqli", "openssl", "pcre", "pdo", "pgsql", "phar", "reflection", "session", "simplexml", "soap", "sockets", "spl", "sqlite3", "standard", "tokenizer", "wddx", "xml", "xmlreader", "xmlwriter", "zip", "zlib"]
let g:php_version_id = 70400
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

" Remap
cmap WQ wq
cmap Wq wq

" Mappings
imap jj <Esc>
let mapleader="-"
map <leader>q :q!<cr>
map <leader>cn :cn<cr>
map <leader>cN :cN<cr>
map <leader>g :Gbrowse<cr>
map <leader>i :Commits<cr>
map <leader>s :Ag 
map <leader>f :Files<cr>
map <leader>b :Buffers<cr>
map <leader>t :tabs<cr>
map <leader>) :g/^$/d<cr>
nnoremap <cr> :noh<cr>
nnoremap <Tab> :b#<CR>
nnoremap <Tab> :b#<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
tnoremap <Esc> <C-\><C-n>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Misc
set relativenumber
set signcolumn="yes"
set statusline=[%n]\ %<%F\ \ %=\ line:%l/%L\ col:%c\ \ @%{strftime(\"%H:%M:%S\")}
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

set statusline+=%{LinterStatus()}
set laststatus=2
set mouse=a
set noswapfile
set number
set nowrap
set smarttab
set copyindent
set autoindent
set shiftround
set noerrorbells
set expandtab
set clipboard=unnamed
set backspace=indent,eol,start
set lcs=tab:.\ ,trail:·,eol:¬,nbsp:_,

" Php/Blade
autocmd FileType php setlocal shiftwidth=4 tabstop=4
autocmd FileType blade setlocal shiftwidth=2 softtabstop=2

" Vue/js
autocmd FileType vue setlocal shiftwidth=4 tabstop=4
autocmd FileType js setlocal shiftwidth=4 tabstop=4

" C#/.Net
autocmd FileType cs setlocal shiftwidth=4 tabstop=4
autocmd FileType cshtml setlocal shiftwidth=4 tabstop=4
let g:python3_host_prog = '/usr/local/bin/python3'

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
autocmd BufNewFile,BufRead *.blade.php set syntax=html
autocmd BufNewFile,BufRead *.blade.php set filetype=html
