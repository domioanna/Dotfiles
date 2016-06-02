"-------------Mappings--------------"
imap jj <Esc>
imap jk <Esc>

"Stop being a n00b!
noremap <up> <NOP>
noremap <down> <NOP>
noremap <left> <NOP>
noremap <right> <NOP>

"Split management
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"Move single lines
nmap <C-k> ddkP
nmap <C-j> ddp

"Move multiple lines
vmap <C-k> xkP`[V`]
vmap <C-j> xp`[V`]

"Make it easy to edit the Vimrc, plugins or a snippets file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
nmap <Leader>es :UltiSnipsEdit

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Tag search"
nmap <Leader>f :tag<space>

"Make :Explore easier to open
nmap <D-1> :Vexplore<cr>

nmap <Leader>f :tag<space>

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

"/
"/ Emmet
"/

imap <expr><tab>
  \ emmet#isExpandable() ? "\<C-Y>," :
  \ "\<tab>"


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

"--------------- Sort the order of the selected lines by length ---------------"

vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>

