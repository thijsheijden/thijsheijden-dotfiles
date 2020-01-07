syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
"-- set paste
highlight Comment ctermfg=green
set backspace=indent,eol,start

"-- PLUGINS --
call plug#begin()
Plug 'mattn/emmet-vim'
call plug#end()

"-- Emmet settings
let g:user_emmet_leader_key=','
