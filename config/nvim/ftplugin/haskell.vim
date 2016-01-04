let g:haskellmode_completion_ghc = 0
let g:necoghc_enable_detailed_browse = 1
let g:ghcmod_open_quickfix_function = "Noop"
setlocal omnifunc=necoghc#omnifunc
setlocal expandtab
autocmd BufWritePost,BufRead *.hs GhcModCheckAsync

let &l:statusline = '%{empty(getqflist()) ? "[No Errors]" : "[Errors Found]"}' . (empty(&l:statusline) ? &statusline : &l:statusline)

nnoremap <leader><CR> :nohlsearch<CR>:GhcModTypeClear<CR>
nnoremap <F1> :GhcModType<CR>

nnoremap <leader>, :MotePrevHole<CR>
nnoremap <leader>. :MoteNextHole<CR>
nnoremap <leader>cf :Casex 
nnoremap <leader>ce :CaseOn 
nnoremap <leader>r :MoteRefine 

function! Noop()
endfunction
