execute pathogen#infect()

filetype plugin indent on
syntax on

let mapleader=","

set omnifunc=syntaxcomplete#Complete
set laststatus=2

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
set clipboard=unnamedplus

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

command ClearSearch let @/=""

autocmd FileType ruby set tabstop=2|set shiftwidth=2
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType haskell set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab

" Restore last used position {{{ 
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                    \   exe "normal! g`\"" |
                    \ endif
set viminfo^=%
" }}}

let g:CommandTMaxHeight = 20
let g:CommandTCancelMap=['<C-x>', '<C-c>', '<esc>']
let g:CommandTWildIgnore=&wildignore . ",**/build/*,**/node_modules/*,**/public/attachments/*"

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_powerline_fonts=0
let g:airline_left_sep = '' 
let g:airline_right_sep = ''

let g:airline_theme = 'wombat'

colorscheme wombat256 
set background=dark

