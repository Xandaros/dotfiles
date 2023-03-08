filetype off

let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_base_dir='/home/xandaros/.config/nvim/bundle/vimspector'

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'SirVer/UltiSnips'
"Plugin 'ervandew/matchem'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'simnalamburt/vim-mundo'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-fugitive'
"Plugin 'benekastah/neomake'
"Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'christoomey/vim-sort-motion'
Plugin 'wellle/targets.vim'
"Plugin 'klen/python-mode'
"Plugin 'dense-analysis/ale'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'evanleck/vim-svelte'
Plugin 'lervag/vimtex'
Plugin 'puremourning/vimspector'
Plugin 'sagi-z/vimspectorpy'
Plugin 'teal-language/vim-teal'
Plugin 'liuchengxu/vista.vim'
Plugin 'nvim-treesitter/nvim-treesitter'
Plugin 'nvim-treesitter/playground'
Plugin 'nvim-treesitter/nvim-treesitter-textobjects'
Plugin 'machakann/vim-highlightedyank'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'cespare/vim-toml'
Plugin 'Iron-E/nvim-libmodal'
Plugin 'jmcantrell/vim-virtualenv'

call vundle#end()

set history=10000

filetype plugin on
filetype indent on

let mapleader = " "

set cursorline
set nu
set rnu

set colorcolumn=121

nmap <f7> mz:silent make<cr>`z
set ambiwidth=single
set laststatus=2
set t_ut=

set hidden "Allows buffers to be hidden
set wildmenu "Enables menu for auto completion
set wildchar=<TAB>
set wildmode=longest:full,full

"Search options
set ignorecase
set smartcase "If and only if search contains uppercase characters, search case sensitive. Requires ignorecase
set hlsearch "Highlight search results
set incsearch "Start searching while typing
set inccommand=nosplit "Preview substitutions, etc.

set lazyredraw "Buffer screen updates. Makes scrolling a lot faster

set magic

set modeline

" set foldmethod=syntax
" set foldlevelstart=1

set tabstop=4
set shiftwidth=4

set undofile
set undodir=~/.config/nvim/undo

set updatetime=250

set expandtab

"UltiSnip options
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

let g:deoplete#enable_at_startup = 1
let g:deoplete#max_menu_width = 50

let g:airline_powerline_fonts = 1
let g:airline_theme = "dark"

"YCM options
let g:ycm_key_list_previous_completion=['<C-K>']
let g:ycm_key_list_select_completion=['<C-j>']
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_semantic_triggers = {'haskell' : ['.']}
let g:ycm_python_binary_path = "/usr/bin/python3"
" Disable syntax checking from YCM - we have ALE for that
let g:ycm_show_diagnostics_ui = 0
let $PATH=$PATH . ':/home/xandaros/.cabal/bin'
let g:ycm_language_server = [
  \   { 'name': 'lua',
  \     'filetypes': [ 'lua' ],
  \     'cmdline': [ expand( '/usr/bin/lua-lsp' ) ]
  \   }
  \ ]

"Neomake
let g:neomake_python_enabled_makers = ['mypy', 'flake8']

"Python stuff
let g:pymode_lint_options_pylint = {'max-line-length': 120}
let g:pymode_options_max_line_length = 120

"Eclim options
"let g:EclimCompletionMethod = 'omnifunc'

"CtrP
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"LaTeX options
let g:tex_flavor = "latex"

" Virtualenv
let g:virtualenv_directory="."

"emmet
let g:user_emmet_leader_key = '<C-z>'

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

"Tree sitter
lua <<EOF
require('nvim-treesitter').define_modules ({
    autoclose_fold = {
        module_path = "autoclose_fold"
    }
})

require('nvim-treesitter.configs').setup({
    highlight = {
        enable = true,
    },
    autoclose_fold = {
        enable = false
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<M-j>",
            node_incremental = "<M-j>",
            node_decremental = "<M-k>",
        }
    },
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
                ["ab"] = "@block.outer",
                ["ib"] = "@block.inner",
            }
        },
        move = {
            enable = true,
        }
    },
    query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = {"BufWrite", "CursorHold"},
    },
})
EOF

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldlevelstart=99

lua <<EOF
    vim.api.nvim_set_var('libmodalTimeouts', true)
    function moveTextObjects()
        local libmodal = require('libmodal')
        local fooModeRecurse = 0

        function textobjectSwapMode()
            local userInput = string.char(vim.api.nvim_get_var(
                'textobjectSwapModeInput'
            ))

            if userInput == 'p' then
                vim.api.nvim_command('TSTextobjectSwapNext @parameter.inner')
            elseif userInput == 'P' then
                vim.api.nvim_command('TSTextobjectSwapPrevious @parameter.inner')
            elseif userInput == 'f' then
                vim.api.nvim_command('TSTextobjectSwapNext @function.outer')
            elseif userInput == 'F' then
                vim.api.nvim_command('TSTextobjectSwapPrevious @function.outer')
            elseif userInput == 'c' then
                vim.api.nvim_command('TSTextobjectSwapNext @class.outer')
            elseif userInput == 'C' then
                vim.api.nvim_command('TSTextobjectSwapPrevious @class.outer')
            end
        end

        libmodal.mode.enter('Textobject Swap', textobjectSwapMode)
    end
EOF

nnoremap <leader>ts :lua moveTextObjects()<CR>

"COC
inoremap <expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : coc#refresh()
inoremap <expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : coc#refresh()
inoremap <silent><expr> <C-l> coc#pum#visible() ? coc#_select_confirm() : 
                                           \"\<C-g>u\<C-l>\<c-r>=coc#on_enter()\<CR>"
inoremap <expr> <C-Space> coc#refresh()

nmap [g <Plug>(coc-diagnostic-prev)
nmap ]g <Plug>(coc-diagnostic-next)
nmap gd <Plug>(coc-definition)
nmap gr <Plug>(coc-references)
nmap gy <Plug>(coc-type-definition)
nmap gi <Plug>(coc-implementation)
map <C-1> <Plug>(coc-codeaction-cursor)
nmap <leader>ca <Plug>(coc-codeaction-cursor)
vmap <leader>ca <Plug>(coc-codeaction-selected)
nmap <leader>cla <Plug>(coc-codelens-action)

nmap <F2> <Plug>(coc-rename)
" imap <C-l> <Plug>(coc-snippets-expand)
let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

nnoremap <silent> <leader><Space> :call CocAction("doHover")<CR>

nmap <leader><F1> <Plug>VimspectorBalloonEval
xmap <leader><F1> <Plug>VimspectorBalloonEval
nmap <leader><BS> :call vimspector#DeleteWatch()<CR>

nnoremap <leader>fc :Vista finder coc<CR>

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

function! init#files()
    let l:git_toplevel = get(systemlist('git rev-parse --show-toplevel 2>/dev/null'), 0, '')
    call fzf#vim#files(l:git_toplevel, fzf#vim#with_preview({'options': ['-q!target ']}), 0)
endfunction

nnoremap <leader>ff :call init#files()<CR>

nnoremap <C-p> :call init#files()<CR>


let g:vimspector_sign_priority = {
  \    'vimspectorBP':         13,
  \    'vimspectorBPCond':     12,
  \    'vimspectorBPDisabled': 11,
  \    'vimspectorPC':         999,
  \ }

autocmd CursorHold * silent call CocActionAsync("highlight")

"Use <leader>f to open NERDTree
"map <leader>f <ESC>:NERDTreeToggle<CR>

" Auto parens
inoremap {<CR> {<CR>}<ESC>O
inoremap {; {<CR>};<ESC>O
inoremap {) {<CR>})<ESC>O
inoremap [<CR> [<CR>]<ESC>O
inoremap [; [<CR>];<ESC>O
inoremap (<CR> (<CR>)<ESC>O
inoremap (; (<CR>);<ESC>O

onoremap af :<C-u>normal! ggVG<CR>

map ´ `
command W w
command Wq wq
command WQ wq

command ClearLocList call setloclist(0, [])
command EditVimrc edit ~/.config/nvim/init.vim

autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"
