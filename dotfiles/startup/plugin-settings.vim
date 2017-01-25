
"-------------Plugins--------------"

"/
"/ PHP CS Fixer
"/

let g:php_cs_fixer_path = "~/.composer/vendor/bin/php-cs-fixer"    "make the path work
let g:php_cs_fixer_level = "psr2"                "set level to PSR-2
let g:php_cs_fixer_fixers_list = "-psr0"         "disable PSR-0
let g:php_cs_fixer_enable_default_mapping = 0    "don't add ley mappings

"/
"/ Command-T
"/

let g:CommandTWildIgnore=&wildignore . ",*/bower_components,*/node_modules,"

"/
"/ :Explore
"/

let g:netrw_liststyle=3

"/
"/ NERDTree
"/

let NERDTreeHijackNetrw = 0

"/
"/ pdv
"/

let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

"/
"/ Emmet
"/

let g:user_emmet_mode='a'    "enable all function in all mode.

"/
"/ Ultisnips
"/

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
autocmd BufNewFile,BufRead *.blade.php setlocal ft=html
