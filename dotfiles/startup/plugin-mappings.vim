"--------------Plugin Mappings---------------"

"Make NERDTree easier to toggle
nmap <D-1> :NERDTreeToggle<cr>

"---------------Laravel-Specific---------------"
nmap <Leader>lr :e app/Http/routes.php<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader><Leader>c :e app/Http/Controllers/<cr>
nmap <Leader><Leader>a :e app/<cr>
nmap <Leader><Leader>t :e tests/<cr>
nmap <Leader><Leader>ra :e resources/assets/<cr>
nmap <Leader><Leader>rv :e resources/views/<cr>

"/
"/ PHPUnit
"/

nmap <Leader>ts :Test<cr>
nmap <Leader>tu :Test tests/unit<cr>
nmap <Leader>ta :Test tests/acceptance<cr>
nmap <Leader>td :Test tests/

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
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>
