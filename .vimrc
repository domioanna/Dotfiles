set nocompatible              " be iMproved, required

syntax enable

filetype plugin on

source ~/.vim/startup/settings.vim
source ~/.vim/startup/appearance.vim
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/plugin-settings.vim
source ~/.vim/plugins.vim


"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

