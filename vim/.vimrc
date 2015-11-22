""""""""""""""""""""""""""""""""""""
" Vim/NeoVim main configuration file
""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""

" vim-plug
call plug#begin()


" Must haves
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-repeat'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'editorconfig/editorconfig-vim'
Plug 'benekastah/neomake'
Plug 'jimsei/winresizer'

" Autocompletion
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe', {'do': './install.py --gocode-completer --clang-completer'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" golang
Plug 'fatih/vim-go', {'for': ['go']}

" Look and feel
Plug 'tomasr/molokai'
Plug 'mkarmona/colorsbox'
Plug 'atweiden/vim-colors-behelit'

" Add plugins to &runtimepath
call plug#end() " vim-plug


""""""""""""""""""""""
" Load custom settings
""""""""""""""""""""""

" Essentials go first
source ~/.vim/startup/essentials.vim

" Look and feel settings
source ~/.vim/startup/lookandfeel.vim

" custom keyboard mappings go in here
source ~/.vim/startup/mappings.vim

" Plugins configuration
source ~/.vim/startup/plugins.vim

" auto-commands
source ~/.vim/startup/autocmds.vim
