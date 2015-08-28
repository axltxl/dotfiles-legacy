scriptencoding utf-8
set encoding=utf-8
set nocompatible              " be iMproved, required
filetype off                  " required


"""""""""""""""""""""""""""
" Essentials
"""""""""""""""""""""""""""

set ttyfast        " Use a fast terminal connection
set t_Co=256       " Enable 256 colors
set showcmd        " Show partial commands in the last line of the screen
set hlsearch       " Highlight searches (use <C-L> to temporarily turn off highlighting; see the mapping of <C-L> below)
set number         " Display line numbers on the left
set nowrap         " No wordwrap, please!
set colorcolumn=80 " Set up a line length marker

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


"""""""""""""""""""""""""""
" Tabs and spaces
"""""""""""""""""""""""""""
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab


"""""""""""""""""""""""""""
" Habit breaking
"""""""""""""""""""""""""""
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

ino <Up> <NOP>
ino <Down> <NOP>
ino <Left> <NOP>
ino <Right> <NOP>


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


"""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""

" Must haves
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'Raimondi/delimitMate'

" Look and feel
Plugin 'tomasr/molokai'

" Python
Plugin 'davidhalter/jedi-vim'


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


" Plugins configuration

" NERDtree
"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <F3> :NERDTreeToggle<CR>


""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'badwolf'


"""""""""""""""""""""""""""
" Look and feel
"""""""""""""""""""""""""""
syntax enable
set background=dark
colorscheme molokai

"""""""""""""""""""""""""""
" Syntastic settings
"""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1 
let g:syntastic_check_on_wq = 0


"""""""""""""""""""""""""""
" Settings for Tagbar
"""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""
" Whitespace and tabs
"""""""""""""""""""""""""""
"set list lcs=trail:·,tab:»·l

"""""""""""""""""""""""""""
" Autocompletion stuff
"""""""""""""""""""""""""""
let delimitMate_expand_cr = 1