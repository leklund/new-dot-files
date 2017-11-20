" vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails' 
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'jlanzarotta/bufexplorer'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-buftabline'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'janko-m/vim-test'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

syntax enable
set background=dark
colorscheme solarized

nnoremap <silent> <CR> :nohlsearch<CR>

set backupdir=~/.vim/swaps,/tmp
set backup
set viminfo='100,"150,<50,s10,h

set undodir=~/.vim/undo
set undofile
set undoreload=10000 "maximum number lines to save for undo on a buffer reload
set undolevels=1000 "maximum number of changes that can be undone

compiler ruby

set number
set showmatch
set incsearch
set hlsearch
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-B> :bprev<CR>
set textwidth=0 nosmartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set ruler
set wrap
"set dir=/tmp//
set scrolloff=5

autocmd FileType ruby runtime ruby_mappings.vim

map <m-c> <plug>NERDCommenterToggle
map <silent> <m-n> :NERDTree<CR>

" airline
let g:airline_powerline_fonts  = 1
let g:airline_theme            = 'powerlineish'
let g:airline_enable_ctrlp     = 1
let g:airline_enable_gundo     = 1
let g:airline_enable_nerdtree  = 1

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
" let g:airline#extensions#tabline#enabled = 1
