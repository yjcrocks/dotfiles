" Vundle --------------------------------- {{{
""""""""""""""""""""""
"       Vundle       "
""""""""""""""""""""""
set nocompatible              " be iMproved, required
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

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'molokai'
Plugin 'junegunn/seoul256.vim'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Solarized'
Plugin 'django.vim'
Plugin 'scrooloose/nerdcommenter'
" HERE HERE HERE HERE HERE
" HERE HERE HERE HERE HERE
" HERE HERE HERE HERE HERE
" HERE HERE HERE HERE HERE

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" }}}
" Colors --------------------------------- {{{
""""""""""""""""""""""
"       Colors       "
""""""""""""""""""""""
" Installed: molokai seoul256 solarized
syntax enable
set background=dark
colorscheme seoul256 "molokai



" }}}
" Spaces & Tabs -------------------------- {{{
""""""""""""""""""""""
"   Spaces & Tabs    "
""""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set cinoptions=l1 "switch-case indent fix


" }}}
" UI Config ------------------------------ {{{
""""""""""""""""""""""
"     UI Config      "
""""""""""""""""""""""
set number
set showcmd
set cursorline
set wildmenu
set showmatch
set autoindent
filetype indent on
set lazyredraw

" airline settings
set guifont=Powerline_Consolas:h14:cANSI
let g:airline_powerline_fonts=1
set laststatus=2

" YouCompleteMe settings
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1
" set g:ycm_add_preview_to_completeopt=0

" ColorColumn settings
" colorcolumn=80
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%>79v.\+/

" NerdCommenter settings
let NERDSpaceDelims=1


" }}}
 " Searching ------------------------------ {{{
""""""""""""""""""""""
"     Searching      "
""""""""""""""""""""""
set incsearch
set hlsearch

" turn off search highlight
nnoremap <leader>. :nohlsearch<CR>



" }}}
" Folding -------------------------------- {{{
""""""""""""""""""""""
"      Folding       "
""""""""""""""""""""""
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax

" space open/closes folds
nnoremap <space> za



" }}}
" Movements ------------------------------ {{{
""""""""""""""""""""""
"      Movement      "
""""""""""""""""""""""
" move verically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
"nnoremap gV `[v`]



" }}}
" Leader Shortcuts ----------------------- {{{
""""""""""""""""""""""
"  Leader Shortcuts  "
""""""""""""""""""""""
let mapleader=","

" toggle gundo
"nnoremap <leader>u :GundoToggle<CR>

" edit vimrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" save session (open it with vim -S)
"nnoremap <leader>s :mksession<CR>

" open ag.vim
"nnoremap <leader>a :Ag



" }}}
" CtrlP ---------------------------------- {{{
""""""""""""""""""""""
"       CtrlP        "
""""""""""""""""""""""
" CtrlP settings
"let g:ctrlp_match_window = 'bottom,order:ttb'
"let g:ctrlp_switch_buffer = 0
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'



" }}}
" Organization --------------------------- {{{
""""""""""""""""""""""
"    Organization    "
""""""""""""""""""""""
set modeline
" set modelines=3


" }}}
" vim:foldmethod=marker:foldlevel=0
