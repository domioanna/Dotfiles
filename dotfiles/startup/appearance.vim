"-------------General Settings--------------"
set background=dark
set t_CO=256
set guifont=Fira_Code:h18
set linespace=15   				    "Macvim-specific line-height.
hi LineNr guibg=bg
hi vertsplit guifg=bg guibg=bg
set nuw=4
set laststatus=0                    " Hide status line

" colorscheme nova
color hybrid_material

if has("gui_running")
    set macligatures
endif

let g:enable_bold_font = 1


hi TabLine      guifg=#2b3b43 guibg=#1d292f gui=none ctermfg=254 ctermbg=238 cterm=none
" hi TabLineSel   guifg=#dddddd guibg=#394c56 gui=bold ctermfg=231 ctermbg=235 cterm=bold
hi TabLineFill  guifg=#2b3b43 guibg=#1d292f gui=none ctermfg=254 ctermbg=238 cterm=none

" let &colorcolumn=join(range(101,999),",")
" hi ColorColumn ctermbg=235 guibg=#394c57

" hi Normal guibg=#262933 ctermfg=grey ctermbg=darkblue

set wrap linebreak textwidth=0
set nowrap
set formatoptions-=t
set linespace=15

set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
