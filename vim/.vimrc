""""""""""""""""""""""""""""""""""""
" Vim/NeoVim main configuration file
""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""

" Essentials go first
source ~/.vim/startup/essentials.vim

" vim-plug
call plug#begin()


" Must haves
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-rooter'

" look and feel
Plug 'jacoborus/tender.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Autocompletion
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" Add plugins to &runtimepath
call plug#end() " vim-plug


""""""""""""""""""""""
" Load custom settings
""""""""""""""""""""""

" Look and feel settings
source ~/.vim/startup/lookandfeel.vim

" custom keyboard mappings go in here
source ~/.vim/startup/mappings.vim

" Plugins configuration
source ~/.vim/startup/plugins.vim

" auto-commands
source ~/.vim/startup/autocmds.vim

" custom settings go in here
if filereadable(glob("~/.vim/startup/custom.vim"))
    source ~/.vim/startup/custom.vim
endif
