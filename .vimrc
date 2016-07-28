set nocompatible              " be iMproved, required

syntax enable

filetype plugin on

"Cleaned up dependancy files
source ~/.vim/startup/settings.vim
source ~/.vim/startup/appearance.vim

source ~/.vim/startup/mappings/visual.vim
source ~/.vim/startup/mappings/commands.vim
source ~/.vim/startup/mappings/leader.vim
source ~/.vim/startup/mappings/normal.vim

source ~/.vim/startup/plugin-settings.vim
source ~/.vim/startup/plugin-mappings.vim

source ~/.vim/plugins.vim

"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
    autocmd BufWritePost */*/*.vim source $MYVIMRC
augroup END
