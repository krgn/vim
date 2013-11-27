function! ReadExcludes() 
if filereadable("./.vim-profile")
    source ./.vim-profile
endif
endfunction

call ReadExcludes()

execute pathogen#infect()

filetype plugin indent on
syntax on

let mapleader=","

set complete+=kspell
set omnifunc=syntaxcomplete#Complete
set laststatus=2

set backupdir=~/.vim/backup,/tmp,./.backup
set directory=~/.vim/backup,./,/tmp,./.backup

set expandtab
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set wildignore+=*.o,*.obj,*.so,*.class,*~,*.git,*.hi,*.jpg,*.png,*.svg,*.jpeg,*.gif
set wildmenu
set wildmode=list:longest
set showmatch
set mat=2
set nobackup
set nowb
set textwidth=0 wrapmargin=0
set nowrap
set noswapfile
set showtabline=2
set clipboard=unnamedplus
set ttimeout
set ttimeoutlen=50

command ClearSearch let @/=""

autocmd FileType ruby       set tabstop=2 | set shiftwidth=2
autocmd FileType javascript set tabstop=2 | set shiftwidth=2
autocmd FileType haskell    set tabstop=4 | set shiftwidth=4
autocmd FileType java       set tabstop=4 | set shiftwidth=4

autocmd FileType gitcommit setlocal spell
autocmd FileType mail setlocal spell
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell

" Restore last used position {{{ 
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                    \   exe "normal! g`\"" |
                    \ endif
set viminfo^=%
" }}}

" just use bash, whatevva..
set shell=/bin/bash\ -i
let g:syntastic_check_on_open=1

let g:CommandTMaxCachedDirectories = 5
let g:CommandTMaxHeight = 20
let g:CommandTCancelMap=['<esc>']
let g:CommandTWildIgnore=&wildignore . ",**/build/*,**/node_modules/*,**/public/attachments,**/public/test_attachments,TAGS"

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_powerline_fonts=0
let g:airline_left_sep = '' 
let g:airline_right_sep = ''

let g:airline_theme = 'molokai'

let g:rehash256=1
set background=dark

colorscheme molokai


