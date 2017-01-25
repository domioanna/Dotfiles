"--------------Plugin Mappings---------------"

"Make NERDTree easier to toggle
nmap <D-1> :NERDTreeToggle<cr>

"---------------Laravel-Specific---------------"
nmap <LocalLeader>lr :e app/Http/routes.php<cr>


"/
"/ PHP CS Fixer
"/

nnoremap <silent><leader>ff :call PhpCsFixerFixFile()<cr>

"/
"/ pdv
"/

nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>

"--------------- Insert namespaces eg. use Class; ------------"

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <LocalLeader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <LocalLeader>n :call PhpInsertUse()<CR>

"--------------- Expand a class ------------"

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php noremap <LocalLeader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <LocalLeader>e :call PhpExpandClass()<CR>
