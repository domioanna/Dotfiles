" Normal mode mappings

" Repeat last macro if in normal buffer
nnoremap <expr> <CR> empty(&buftype) ? '@@' : '<CR>'

" Avoid unintentional switch to Ex mode
nmap Q q

"Split management
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l

nmap <Left> <<
nmap <Right> >>
nmap <Up> [e
nmap <Down> ]e
