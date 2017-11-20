let $PS1='> '
let g:plug_shallow = 0
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
Plug 'https://github.com/w0rp/ale.git'
Plug 'kassio/neoterm'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

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
let g:airline#extensions#ale#enabled = 1
" let g:airline#extensions#tabline#enabled = 1

" vim-test
let test#strategy = "neoterm"
let g:neoterm_position = "vertical"

map <LocalLeader>t :TestFile<CR>
map <LocalLeader>s :call RunNearestSpec()<CR>
map <LocalLeader>l :call RunLastSpec()<CR>
map <LocalLeader>a :call RunAllSpecs()<CR><Paste>

" ALE
let g:ale_fixers = { 'ruby': [ 'rubocop' ], 'go': [ 'gofmt'] }
let g:ale_sign_error = '🚫'
let g:ale_sign_warning = '⚠️'
map <LocalLeader>rb :ALEFix<CR>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
