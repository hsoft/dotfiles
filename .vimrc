" ----- Vundle setup -----
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'preview'
Plugin 'ctrlp.vim'
Plugin 'Tagbar'
Plugin 'Syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'surround.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'groenewege/vim-less'

call vundle#end()
filetype plugin indent on
" ----- END Vundle setup -----

set nocompatible ruler laststatus=2 showcmd showmode number
set incsearch ignorecase smartcase hlsearch nowrap
syntax enable
set background=dark
colorscheme solarized

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set colorcolumn=100

" http://stackoverflow.com/a/15317146
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" http://stackoverflow.com/a/5019111
set tags=tags;/

" Automatically remote trailing whitespaces on save

autocmd FileType python,html autocmd BufWritePre <buffer> :%s/\s\+$//e

" File ignores

set wildignore+=*.pyc,__pycache__
let NERDTreeRespectWildIgnore=1

" key mappings

map <Leader>r :CtrlPBufTag<CR>
map <Leader>R :CtrlPTag<CR>
map <F8> :TagbarToggle<CR>
map <F9> :NERDTreeToggle<CR>
map <C-W>o :tabnew<CR>
map <C-W>i :tabclose<CR>
map <C-W>u :tabprevious<CR>
map <C-W>p :tabnext<CR>

" Syntax stuff

let g:syntastic_python_checkers = ['python', 'pyflakes']

