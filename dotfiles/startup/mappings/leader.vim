" Leader specific mappings
let mapleader = "\<Space>" 	"The default leader is \, but a space is much better.
let maplocalleader = ","    "A second leader key

" Open last buffer.
nnoremap <Leader><Leader> <C-^>

" Quick quit a buffer
nnoremap <Leader>q :quit<CR>
" Quick write
nnoremap <Leader>w :write<CR>
" Quite exit
nnoremap <Leader>x :xit<CR>

nnoremap <silent> <Leader>zz :call leader#zap()<CR>

"Make it easy to edit the Vimrc, plugins or a snippets file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
nmap <Leader>es :UltiSnipsEdit

"Add simple highlight removal.
nmap <Leader>z :nohlsearch<CR>

"Tag search"
nmap <Leader>f :tag<space>

vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>

" Zap Trailing whitespace
function! leader#zap() abort
    let l:pos=getcurpos()
    let l:search=@/
    keepjumps %substitute/\s\+$//e
    let @/=l:search
    nohlsearch
    call setpos('.', l:pos)
endfunction
