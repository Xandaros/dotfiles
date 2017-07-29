let g:haskellmode_completion_ghc = 0
let g:necoghc_enable_detailed_browse = 1
let g:ghcmod_open_quickfix_function = "Noop"
setlocal omnifunc=intero#omnifunc
setlocal expandtab
autocmd BufWritePost *.hs Neomake

let g:neomake_haskell_enabled_makers = ['ghcmod']
let g:neomake_verbose = 0

let g:haskell_indent_in = 0

let g:deoplete#max_menu_width = 100

nnoremap <buffer><F1> mzviwl:InteroType<CR>`z
nnoremap <buffer><F2> :InteroTypeStr<CR>
nnoremap <buffer><F3> :GhcModTypeInsert<CR>

nnoremap <buffer><leader><CR> :nohlsearch<CR>:GhcModTypeClear<CR>

nnoremap <buffer><leader>cf :GhcModSplitFunCase<CR>
nnoremap <buffer><leader>cg :GhcModSigCodegen<CR>

nnoremap <buffer><leader>g mzviwl:InteroGoto<CR>
nnoremap <buffer><leader>u mzviwl:InteroUses<CR>
nnoremap <buffer><leader>t mzviwl:InteroType<CR>`z

function! Noop()
endfunction
