"-------------General Settings--------------"
set background=dark
set t_CO=256
set guifont=Fira_Code:h18
set linespace=15   				    "Macvim-specific line-height.
hi LineNr guibg=bg
hi vertsplit guifg=bg guibg=bg
set nuw=4

if has("gui_running")
    "colorscheme facebook
    colorscheme ocean
    set macligatures
endif

hi TabLine      guifg=#394159 guibg=#242831 gui=none ctermfg=254 ctermbg=238 cterm=none
hi TabLineSel   guifg=#dddddd guibg=#252a3a gui=bold ctermfg=231 ctermbg=235 cterm=bold
hi TabLineFill  guifg=#394159 guibg=#242831 gui=none ctermfg=254 ctermbg=238 cterm=none

let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#242831

set wrap linebreak textwidth=0
set nowrap
set formatoptions-=t
set linespace=15

set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
