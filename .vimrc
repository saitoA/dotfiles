set nocompatible

" encode
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,sjis,euc-jp

" menu
set statusline=%{expand('%:p:t')}\ %<\(%{expand('%:p:h')}\)%=\ %m%r%y%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}[%3l,%3c]
set wildmenu
set wildmode=longest,list,full

" display
"set number
syntax on
filetype on
set laststatus=2
set cmdheight=2
set showcmd
set wrap

" search
set history=100
set incsearch
set ignorecase
set smartcase
set showmatch

" tab
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set noautoindent

" color
if &t_Co > 1
  set t_Co=256
  syntax enable
  colorscheme molokai
endif

" backup
set nobackup
"set writebackup
"set backup
"set backupdir=~/backup
"set directory=~/swap

" buffer
map <F2> <ESC>:bp<CR>
map <F3> <ESC>:bn<CR>

" ctags
set tags=./tags
set tags+=tags;
set tags+=./**/tags

" 
"inoremap <C-g> <ESC>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Del>
"inoremap <C-b> <Left>
"inoremap <C-n> <Down>
"inoremap <C-p> <Up>
"inoremap <C-f> <Right>


if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/unite.vim'

" NeoSnippets
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'

" Added For Ruby Programming
NeoBundle 'AndrewRadev/switch.vim'
NeoBundle 'tpope/vim-endwise'

" JS
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'clausreinke/typescript-tools'
NeoBundle 'jason0x43/vim-js-indent'

call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck
