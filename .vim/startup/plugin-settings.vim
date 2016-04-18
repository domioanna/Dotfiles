
"-------------Plugins--------------"

"/
"/ PHPUnit
"/

let g:phpunit_cmd = "./vendor/bin/phpunit"
let g:phpunit_args_append = "--stop-on-failure"

"/
"/ PHP CS Fixer
"/

let g:php_cs_fixer_path = "~/.composer/vendor/bin/php-cs-fixer"    "make the path work
let g:php_cs_fixer_level = "psr2"                "set level to PSR-2
let g:php_cs_fixer_fixers_list = "-psr0"         "disable PSR-0
let g:php_cs_fixer_enable_default_mapping = 0    "don't add ley mappings

"/
"/ CtrlP
"/

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"/
"/ NERDTree
"/

let NERDTreeHijackNetrw = 0

"/
"/ Greplace.vim
"/

set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

"/
"/ pdv
"/

let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

"/
"/ Ultisnips
"/

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
autocmd BufNewFile,BufRead *.blade.php setlocal ft=html

"/
"/ Emmet
"/

let g:user_emmet_mode='a'    "enable all function in all mode.

