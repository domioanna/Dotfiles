filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'           " Plugin Installer
Plugin 'tpope/vim-vinegar'              " Enhancing Netwr  
Plugin 'tpope/vim-surround'             " Adding 'surround' objects
Plugin 'tpope/vim-unimpaired'           " More mapping pairs
Plugin 'scrooloose/nerdtree'            " Sidebar functionality
Plugin 'tpope/vim-commentary'           " Comment toggler
Plugin 'wincent/command-t'              " File search
Plugin 'ctrlpvim/ctrlp.vim'             " Project search (maybe remove?)
Plugin 'SirVer/ultisnips'               " Snippet tool
Plugin 'tobyS/vmustache'                " Required: for PDV
Plugin 'tobyS/pdv'                      " Doc blocks

" Appearance related
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'chriskempson/base16-vim'

" PHP Related
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'joonty/vim-phpunitqf'
Plugin 'janko-m/vim-test'
Plugin 'jwalton512/vim-blade'
Plugin 'zzantares/vim-laravel'

" Styling related
Plugin 'mattn/emmet-vim'
Plugin 'genoma/vim-less'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'vim-scripts/vim-stylus'

" Better indentation
Plugin 'captbaritone/better-indent-support-for-php-with-html'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
