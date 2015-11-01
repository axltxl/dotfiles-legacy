" Essentials go first
source ~/.vim/startup/essentials.vim


" https://github.com/VundleVim/Vundle.vim/issues/16
filetype off                  " required

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
Plugin 'Valloric/YouCompleteMe'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" golang
Plugin 'fatih/vim-go'

" Look and feel
Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""
" Load custom settings
""""""""""""""""""""""

" Look and feel settings
source ~/.vim/startup/colors.vim

" custom keyboard mappings go in here
source ~/.vim/startup/mappings.vim

" Plugins configuration
source ~/.vim/startup/plugins.vim

" auto-commands
source ~/.vim/startup/autocmds.vim
