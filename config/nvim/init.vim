filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'SirVer/UltiSnips'
Plugin 'ervandew/matchem'
Plugin 'eagletmt/neco-ghc'
Plugin 'eagletmt/ghcmod-vim' "Requires Shougo/vimproc
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'
Plugin 'Shougo/vimproc'
Plugin 'Shougo/deoplete.nvim'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'simnalamburt/vim-mundo'
Plugin 'tomtom/quickfixsigns_vim'
Plugin 'tpope/vim-speeddating'
Plugin 'benekastah/neomake'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'christoomey/vim-sort-motion'
Plugin 'wellle/targets.vim'

call vundle#end()

set history=10000

filetype plugin on
filetype indent on

let mapleader = "-"

set cursorline
set nu
set rnu

set colorcolumn=81

nmap <f7> mz:silent make<cr>`z
set ambiwidth=single
set laststatus=2
set t_ut=

set hidden "Allows buffers to be hidden
set wildmenu "Enables menu for auto completion
set wildchar=<TAB>
set wildmode=full

"Search options
set ignorecase
set smartcase "If and only if search contains uppercase characters, search case sensitive. Requires ignorecase
set hlsearch "Highlight search results
set incsearch "Start searching while typing

set lazyredraw "Buffer screen updates. Makes scrolling a lot faster

set magic

set modeline

set foldmethod=syntax
set foldlevelstart=1

set tabstop=4
set shiftwidth=4

"UltiSnip options
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

let g:deoplete#enable_at_startup = 1
let g:deoplete#max_menu_width = 50

let g:airline_powerline_fonts = 1
let g:airline_theme = "dark"

"Eclim options
"let g:EclimCompletionMethod = 'omnifunc'

"LaTeX options
let g:tex_flavor = "latex"

"Disable beeps and flashes
set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable "Turn on syntax highlighting
colorscheme molokai "Set colour scheme
set background=dark "Use bright colour set for syntax highlighting

set fillchars+=stl:\ ,stlnc:\

set encoding=utf8 "Use utf8 encoding
set ffs=unix,dos,mac "Line ending preference

set ruler

" set nobackup "Don't create temporary files
" set nowb "Don't make a backup before overwriting
" set noswapfile "Don't make a swp file (contains info in case vim crashes, like undo-history)

set mouse=n "Enable mouse in normal mode

"Remap up/down arrows to move lines
"TODO: Improve
nnoremap <UP> ddkP
nnoremap <DOWN> ddp
inoremap <UP> <ESC>ddkPi
inoremap <DOWN> <ESC>ddpi
vnoremap <UP> <ESC>ddkPv
vnoremap <DOWN> <ESC>ddpv

"Remal Ctrl+/h/j/k/l to move lines
nmap <C-k> ddkP
nmap <C-j> ddp
imap <C-k> <ESC>ddkkpi
imap <C-j> <ESC>ddpi
vmap <C-k> <ESC>ddkkpv
vmap <C-j> <ESC>ddpv

"Remap left/right arrow keys to switch tabs
nnoremap <LEFT> <ESC>:tabprevious<CR>
nnoremap <RIGHT> <ESC>:tabnext<CR>
inoremap <LEFT> <ESC>:tabprevious<CR>
inoremap <RIGHT> <ESC>:tabnext<CR>
vnoremap <LEFT> <ESC>:tabprevious<CR>
vnoremap <RIGHT> <ESC>:tabnext<CR>

"<leader><cr> to get rid of search highlights
map <silent> <leader><cr> :nohl<cr>

"Use <leader>ss to toggle spell check
map <leader>ss :setlocal spell!<cr>

"Spell check bindings
map <leader>sn ]s
map <leader>sp [s
map <leader>s? z=

"Loclist bindings
nnoremap <leader>ll :lopen<cr>
nnoremap <leader>lq :lclose<cr>
nnoremap <leader>lf :lfirst<cr>
nnoremap <leader>lp :lprevious<cr>
nnoremap <leader>lv :lnext<cr>
nnoremap <leader>cc :copen<cr>
nnoremap <leader>cq :cclose<cr>
nnoremap <leader>cf :cfirst<cr>
nnoremap <leader>cp :cprevious<cr>
nnoremap <leader>cv :cnext<cr>

noremap Y y$

noremap gV `[V`]

"Use <leader>f to open NERDTree
"map <leader>f <ESC>:NERDTreeToggle<CR>

onoremap af :<C-u>normal! ggVG<CR>

nnoremap <F5> :GundoToggle<CR>

map ´ `
command W w
command Wq wq
command WQ wq

command ClearLocList call setloclist(0, [])
