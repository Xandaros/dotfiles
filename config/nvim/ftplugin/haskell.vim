let g:haskellmode_completion_ghc = 0
let g:necoghc_enable_detailed_browse = 1
let g:ghcmod_open_quickfix_function = "Noop"
setlocal omnifunc=necoghc#omnifunc
setlocal expandtab
autocmd BufWritePost,BufRead *.hs Neomake

let g:neomake_haskell_enabled_makers = ['ghcmod']

nnoremap <buffer><F1> :GhcModType<CR>
nnoremap <buffer><F2> :GhcModTypeInsert<CR>

nnoremap <buffer><leader><CR> :nohlsearch<CR>:GhcModTypeClear<CR>

nnoremap <buffer><leader>cf :GhcModSplitFunCase<CR>

function! Noop()
endfunction
