syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
"-- set paste
set backspace=indent,eol,start

"-- PLUGINS --
call plug#begin()
" Language Syntax Support
Plug 'pangloss/vim-javascript' "JS highlighting
Plug 'mxw/vim-jsx' "JSX syntax highlighting
Plug 'jparise/vim-graphql' "graphql syntax highlighting
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Tools
Plug 'jiangmiao/auto-pairs' "Autocomplete brackets.
Plug 'tpope/vim-fugitive' "Git tools
Plug 'metakirby5/codi.vim'

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'} "Nerdtree
Plug 'neoclide/coc.nvim', {'branch': 'release'} "autocompletion
Plug 'OmniSharp/omnisharp-vim'

Plug 'ryanoasis/vim-devicons'
Plug 'keith/parsec.vim'
call plug#end()

" save with zz
nnoremap zz :update<cr>

" Turn off automatic multiline comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2     " tab spacing
set expandtab     " tabs are now spaces
set ai            " Auto indent
" set si            " Smart indent
set wrap          " Wrap lines
set nowrap        " Don't wrap text

" Blink cursor on error instead of beeping (grr)
set visualbell
set t_vb=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Changes NerdTree Toggle to Ctrl + n
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1 "closes NerdTree when opening a file

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Conquer of Completion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

set encoding=UTF-8

" coc.nvim language plugins auto install (C# and C++)
let g:coc_global_extensions=[ 'coc-omnisharp', 'coc-clangd' ]
let g:OmniSharp_start_without_solution = 1

" Parsec theme
syntax on
