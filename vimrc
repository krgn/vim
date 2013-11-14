filetype plugin indent on
syntax on

let mapleader=","

set omnifunc=syntaxcomplete#Complete

set backupdir=~/.vim/backup,/tmp,./.backup
set directory=~/.vim/backup,./,/tmp,./.backup

set expandtab
set tabstop=4
set shiftwidth=4
set wildmenu
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set wildignore+=*.o,*.obj,*.so,*.class,*~,*.git,*.hi,*.jpg,*.png,*.svg,*.jpeg
set showmatch
set mat=2
set nobackup
set nowb
set noswapfile

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

command ClearSearch let @/=""

autocmd FileType ruby set tabstop=2|set shiftwidth=2
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType haskell set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab

" {{{ Remember info about open buffers on close
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                    \   exe "normal! g`\"" |
                    \ endif
set viminfo^=%
" }}}

let g:CommandTMaxHeight = 20
let g:CommandTCancelMap=['<C-x>', '<C-c>']
let g:CommandTWildIgnore=&wildignore . ",**/build/*,**/node_modules/*,**/public/attachments/*"

colorscheme wombat256 
set background=dark
