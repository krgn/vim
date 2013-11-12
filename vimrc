filetype plugin indent on
syntax on
colorscheme wombat256

set omnifunc=syntaxcomplete#Complete
set backupdir=~/.vim/backup,/tmp,./.backup
set directory=~/.vim/backup,./,/tmp,./.backup

set expandtab
set tabstop=4
set shiftwidth=4

autocmd FileType ruby set tabstop=2|set shiftwidth=2
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType haskell set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab

