set nocompatible
set nocp
filetype plugin indent on
" set columns=200
set t_Co=256
"syntax clear
syntax on
colorscheme ry
"colors desert
set nowrap
" Autocomplete pour tous les fichiers PHP
autocmd FileType php runtime! autoload/phpcomplete.vim
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"set omnifunc=phpcomplete#CompletePHP
" Autocomplete phpdoc
"PHP documentation on CTRL+P
source ~/.vim/plugins/php-doc.vim
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>
nnoremap <C-P> :call PhpDocSingle()<CR>
nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>
vnoremap <C-P> :call PhpDocRange()<CR>
map ,p :r ~/.vim/templates/jsdoc<cr>
map ,c :r ~/.vim/templates/controller.js<cr>
map ,model :r ~/.vim/templates/model.js<cr>
map ,it :r ~/.vim/templates/integrationTest<cr>

" config pour autocomplete
"let mapleader="@"
set foldlevel=666
set foldcolumn=0
set foldmethod=indent
set expandtab
set shiftwidth=2
set tabstop=2
set incsearch
set hlsearch
set smartcase
set ignorecase
set showmatch
set autoindent
set ruler 
set cursorline
set autoindent
set noswapfile
if has("wildmenu")
    set wildmenu
    set wildmode=list:full
    set wildignore+=*.swp
endif
highlight Comment ctermfg=LightGray
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
\| exe "normal g'\"" |endif
au BufRead,BufNewFile *.twig set filetype=htmljinja
call pathogen#infect()
au BufNewFile,BufRead *.spip set ft=spip
