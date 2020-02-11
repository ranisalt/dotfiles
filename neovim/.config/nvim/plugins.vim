" ensure vim-plug is installed and autoloaded
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  au VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
" DEFAULTS
Plug 'tpope/vim-sensible'

" Tim Pope
Plug 'tpope/vim-commentary'  " gc to toggle comments, gcc linewise

" Editing
Plug 'editorconfig/editorconfig-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-repeat'  " make vim-commentary and vim-surround work with .
Plug 'tpope/vim-surround'  " ysiw to add delimiters, cs to change, S visual

" File management
Plug 'scrooloose/nerdtree'

" Git
Plug 'tpope/vim-fugitive'

" Interface
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'farmergreg/vim-lastplace'
Plug 'mhinz/vim-signify'

" Text navigation
Plug 'justinmk/vim-sneak'

" Syntax/completion
Plug 'w0rp/ale'

""" LANGUAGE SPECIFIC
Plug 'lervag/vimtex', { 'for': 'tex' }

Plug 'ryanoasis/vim-devicons'

" COLORSCHEMES
Plug 'morhetz/gruvbox'
call plug#end()
