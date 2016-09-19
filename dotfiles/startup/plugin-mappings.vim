"--------------Plugin Mappings---------------"

"Make NERDTree easier to toggle
nmap <D-1> :NERDTreeToggle<cr>

"---------------Laravel-Specific---------------"
nmap <LocalLeader>lr :e app/Http/routes.php<cr>

"/
"/ PHPUnit
"/

nmap <LocalLeader>ts :Test<cr>
nmap <LocalLeader>tu :Test tests/unit<cr>
nmap <LocalLeader>ta :Test tests/acceptance<cr>
nmap <LocalLeader>td :Test tests/

"/
"/ PHP CS Fixer
"/

nnoremap <silent><leader>ff :call PhpCsFixerFixFile()<cr>

"/
"/ CtrlP
"/

nmap <D-p> :CtrlP<cr>
nmap <c-R> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>
nmap <D-p> <Plug>PeepOpen

"/
"/ pdv
"/

nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>

"--------------- Insert namespaces eg. use Class; ------------"

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

"--------------- Expand a class ------------"

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php noremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>
