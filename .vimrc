set nocompatible ruler laststatus=2 showcmd showmode number
set incsearch ignorecase smartcase hlsearch nowrap
syntax on

set expandtab
set shiftwidth=4
set softtabstop=4

set colorcolumn=100

" http://stackoverflow.com/a/15317146
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" http://stackoverflow.com/a/5019111
set tags=tags;/

" Automatically remote trailing whitespaces on save

autocmd FileType python autocmd BufWritePre <buffer> :%s/\s\+$//e

" File ignores

set wildignore+=*.pyc

" key mappings

map <Leader>r :CtrlPBufTag<CR>
map <Leader>R :CtrlPTag<CR>

" Syntax stuff

let g:syntastic_python_checkers = ['python', 'pyflakes']

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
Plugin 'Syntastic'

call vundle#end()
filetype plugin indent on

