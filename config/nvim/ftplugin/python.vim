function! MakeFString()
    let save_pos = getpos(".")
    normal! F"if
    call setpos(".", save_pos)
    normal! l
endfunction
command! MakeFString call MakeFString()
nnoremap <leader>f :MakeFString<CR>

silent! VirtualEnvActivate venv
