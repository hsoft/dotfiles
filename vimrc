" include from ~/.vimrc with "source dotfiles/vimrc"

set nocompatible ruler laststatus=2 showcmd showmode number
set incsearch ignorecase smartcase hlsearch nowrap wildmenu
set relativenumber
set t_Co=256
syntax enable
set background=dark
" no delay on ESC
set esckeys
" allow buffer to go hidden without being saved
" this is to avoid annoying window-popping when opening a buffer while having
" forgot to save the current one
set hidden

set expandtab
set shiftwidth=4
set tabstop=4
" same as shiftwidth
set softtabstop=-1

set colorcolumn=80

" http://stackoverflow.com/a/15317146
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" http://stackoverflow.com/a/5019111
set tags=tags;/

" Automatically remote trailing whitespaces on save

autocmd FileType c,python,html,htmldjango,php,javascript,rs,css,scss autocmd BufWritePre <buffer> :%s/\s\+$//e
" http://stackoverflow.com/a/18671756
autocmd FileType yaml setlocal sw=2 ts=2 nosmartindent nocindent indentexpr<
autocmd FileType text setlocal tw=80

" File ignores

set wildignore+=*.pyc,__pycache__,*.o,env

" CtrlP

let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_working_path_mode = 'ra'

" key mappings

map <Leader>r :CtrlPBufTag<CR>
map <Leader>R :CtrlPTag<CR>
map <Leader>p :CtrlP<CR>
map <F9> :Explore<CR>

" dev-related mappings
nmap <C-b>b :!make<CR>
nmap <C-b>B :!make<Space>
nmap <C-b>t :!make test<CR>

" Syntax stuff

let g:syntastic_python_checkers = ['python3', 'pyflakes']
let g:syntastic_c_include_dirs = ['/usr/avr/include']

