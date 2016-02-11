""""""""""""""""""
" Look and feel settings
"""""""""""""""""""

if has('nvim')
   let $NVIM_TUI_ENABLE_TRUE_COLOR=1        " Enable glorious true color
else
    set t_Co=256                            " Enable 256 colors
endif

set showcmd                                 " Show partial commands in the last line of the screen
syntax on                                   " Activate syntax highlightning
set background=dark                         " Set the dark background
colorscheme molokai                         " Color scheme
set colorcolumn=80                          " Set up a line length marker
set relativenumber                          " Show line numbers relative to current line
set number                                  " Display line numbers on the left
set nowrap                                  " No wordwrap, please!
set list                                    " Whitespace is shown by default
set listchars=tab:\ ,eol:,trail:·,space:· " Use the same symbols as TextMate for tabstops and EOLs
set cursorline                              " Highlight current line
set hlsearch                                " Highlight searches (use <C-L>

