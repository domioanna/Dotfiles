filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'           " Plugin Installer
Plugin 'tpope/vim-surround'             " Adding 'surround' objects
Plugin 'scrooloose/nerdtree'            " Sidebar functionality
Plugin 'tpope/vim-commentary'           " Comment toggler
Plugin 'wincent/command-t'              " File search
Plugin 'SirVer/ultisnips'               " Snippet tool
Plugin 'tobyS/vmustache'                " Required: for PDV
Plugin 'tobyS/pdv'                      " Doc blocks

" Appearance related
Plugin 'pangloss/vim-javascript'        " Required for Nova (JS Styling)
Plugin 'othree/html5.vim'               " Required for Nova (HTML Styling)
Plugin 'hail2u/vim-css3-syntax'         " Required for Nova (CSS Styling)
Plugin 'trevordmiller/nova-vim'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'dracula/vim'

" PHP Related
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'jwalton512/vim-blade'

" Styling related
Plugin 'mattn/emmet-vim'
Plugin 'genoma/vim-less'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'vim-scripts/vim-stylus'
Plugin 'kristijanhusak/vim-hybrid-material'

" Better indentation
Plugin 'captbaritone/better-indent-support-for-php-with-html'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
