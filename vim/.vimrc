" Essentials go first
source ~/.vim/startup/essentials.vim


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


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
"Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'Raimondi/delimitMate'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'suxpert/vimcaps' "Disable capslock when switching to NORMAL mode

" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" Look and feel
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'

" Python
Plugin 'davidhalter/jedi-vim'
Plugin 'lambdalisue/vim-pyenv'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Load custom settings
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/colors.vim

" Plugins configuration
source ~/.vim/startup/plugins.vim

" auto-commands
source ~/.vim/startup/autocmds.vim
