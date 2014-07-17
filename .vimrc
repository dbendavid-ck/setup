set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/tComment'
Plugin 'yegappan/mru'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on

" CMD-1 opens up the file list
nmap <c-o> :NERDTreeToggle<CR>
" " Find the current file in NERDTree file structure
nmap <c-f> :NERDTreeFind<CR>

set tags=tags
set wildmenu
set nowrap                      " Do not wrap long lines
set autoindent                  " Indent at the same level of the previous line
set shiftwidth=4                " Use indents of 4 spaces
set expandtab                   " Tabs are spaces, not tabs
set tabstop=4                   " An indentation every four columns
set softtabstop=4               " Let backspace delete indent

set cursorline                  " Highlight current line
colorscheme desert
set nu
set fileformats+=dos
set incsearch
nmap kk 20k
set tags=/www/git-repos/pm/tags
" ctrl-b to search ctags for current word
nmap <c-b> viw<c-]>

nnoremap <c-g> :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>
