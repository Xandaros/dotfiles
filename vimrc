execute pathogen#infect()

set history=1024

filetype plugin on
filetype indent on

let mapleader = ","

set cursorline
set rnu

set makeprg=autoreconf\ -i\ &&\ ./configure\ &&\ make

"Autocomplete options
let g:clang_complete_complete_auto = 1
let g:clang_complete_auto_select = 1
let g:clang_complete_copen = 1
let g:clang_complete_periodic_quickfix = 0
set completeopt=menu,menuone,longest

nmap <f5> :call g:ClangUpdateQuickFix()<CR>
nmap <f7> :make
set ambiwidth=single
set laststatus=2
set term=xterm-256color
set t_ut=

set hid
set ignorecase
set smartcase

set hlsearch
set incsearch
set showmatch

set lazyredraw
set magic


set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable
colorscheme molokai
set background=dark

set fillchars+=stl:\ ,stlnc:\
set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set mouse=n

nnoremap <UP> ddkP
nnoremap <DOWN> ddp
inoremap <UP> <ESC>ddkPi
inoremap <DOWN> <ESC>ddpi
vnoremap <UP> <ESC>ddkPv
vnoremap <DOWN> <ESC>ddpv


nnoremap <LEFT> <ESC>:tabprevious<CR>
nnoremap <RIGHT> <ESC>:tabnext<CR>
inoremap <LEFT> <ESC>:tabprevious<CR>
inoremap <RIGHT> <ESC>:tabnext<CR>
vnoremap <LEFT> <ESC>:tabprevious<CR>
vnoremap <RIGHT> <ESC>:tabnext<CR>
vnoremap <silent> * :call VisualSelection('f')
vnoremap <silent> # :call VisualSelection('b')

imap <C-y> <ESC>
vmap <C-y> <ESC>
"map j gjzz
"map k gkzz

map <space> /
map <c-space> ?

map <silent> <leader><cr> :nohl<cr>

nnoremap <M-up> <C-W>k
nnoremap <M-down> <C-W>j
nnoremap <M-left> <C-W>h
nnoremap <M-right> <C-W>l

map <leader>c :close<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>

noremap <leader>tn <ESC>:tabnew<cr>
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

nmap <C-k> ddkP
nmap <C-j> ddp
imap <C-k> <ESC>ddkkpi
imap <C-j> <ESC>ddpi
vmap <C-k> <ESC>ddkkpv
vmap <C-j> <ESC>ddpv

map <leader>cw :cw<cr>
map <leader>n :cn<cr>
map <leader>p :cp<cr>

map <leader>ss :setlocal spell!<cr>

map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

map <leader>f <ESC>:NERDTreeToggle<CR>
