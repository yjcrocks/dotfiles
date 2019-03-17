" Plugin --------------------------------- {{{
""""""""""""""""""""""""
"       vim-plug       "
""""""""""""""""""""""""
" Link: https://github.com/junegunn/vim-plug
set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'tell-k/vim-autopep8'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/seoul256.vim'
call plug#end()

" }}}
" Colors --------------------------------- {{{
""""""""""""""""""""""
"       Colors       "
""""""""""""""""""""""
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
colorscheme seoul256

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
set autoread
set autoindent
filetype indent on
set lazyredraw
set mouse=a
set scrolloff=3
set clipboard=unnamed

" airline settings
" set guifont=Powerline_Consolas:h14:cANSI
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep=""
let g:airline_powerline_fonts=0
let g:airline_right_sep=""
let g:airline_solarized_bg='dark'
let g:airline_theme="solarized"
set laststatus=2

" ColorColumn settings
" colorcolumn=80
let s:highlightOverLength = 0
highlight OverLengthHi ctermbg=red ctermfg=white guibg=#592929
highlight link OverLength NONE
match OverLength /\%>88v.\+/
fun! ToggleOverLengthMatching()
    if s:highlightOverLength
        highlight link OverLength NONE
        let s:highlightOverLength = 0
    else
        highlight link OverLength OverLengthHi
        let s:highlightOverLength = 1
    endif
endfun

" NerdCommenter settings
let NERDSpaceDelims=1

" Change cursor form - works in tmux & iterm
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" }}}
 " Searching ------------------------------ {{{
""""""""""""""""""""""
"     Searching      "
""""""""""""""""""""""
set incsearch
set hlsearch

" Tagbar settings
nmap <F8> :TagbarToggle<CR>

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

" toggle overlength highlights
map <leader>hh :call ToggleOverLengthMatching()<CR>

" turn off search highlight
nnoremap <leader>, :nohlsearch<CR>

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
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'



" }}}
" Organization --------------------------- {{{
""""""""""""""""""""""
"    Organization    "
""""""""""""""""""""""
set modeline
" set modelines=3


" }}}
" ETC Config ------------------------------ {{{
"""""""""""""""""""""""
"     ETC Config      "
"""""""""""""""""""""""

" autoPEP8 configs
let g:autopep8_max_line_length=119

" autopairs configs
"let g:AutoPairsFlyMode = 1

" }}}
" vim:foldmethod=marker:foldlevel=0
