filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'           " Plugin Installer
Plugin 'tpope/vim-vinegar'              " 
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'wincent/command-t'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'tobyS/vmustache'                " Required: for PDV
Plugin 'tobyS/pdv'                      " Doc blocks
" Plugin 'ervandew/supertab'

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

Plugin 'captbaritone/better-indent-support-for-php-with-html'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
