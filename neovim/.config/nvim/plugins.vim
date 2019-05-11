" ensure vim-plug is installed and autoloaded
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  au VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
" DEFAULTS
Plug 'tpope/vim-sensible'

" EXTENSIONS
" Plug 'mattn/emmet-vim'
" Plug 'junegunn/vim-easy-align'

" Tim Pope
Plug 'tpope/vim-commentary'  " gc to toggle comments, gcc linewise

" Editing
Plug 'editorconfig/editorconfig-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-repeat'  " make vim-commentary and vim-surround work with .
Plug 'tpope/vim-surround'  " ysiw to add delimiters, cs to change, S visual
Plug 'godlygeek/tabular', { 'on': 'Tab' }

" File management
Plug 'scrooloose/nerdtree', { 'on': 'NERDTree' }

" Git
Plug 'tpope/vim-fugitive'

" Interface
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'farmergreg/vim-lastplace'
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'

" Searching
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }

" Text navigation
Plug 'justinmk/vim-sneak'

" Syntax/completion
Plug 'w0rp/ale'
" Plug 'valloric/youcompleteme', { 'do': './install.py --clang-completer --go-completer --rust-complete--rust-completerr --ts-completer' }

""" LANGUAGE SPECIFIC
Plug 'sheerun/vim-polyglot'

Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'maxmellon/vim-jsx-pretty', { 'for': 'javascript' }
Plug 'python-mode/python-mode', { 'branch': 'develop', 'for': 'python' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'valloric/matchtagalways' ", { 'for': 'html' }

Plug 'ryanoasis/vim-devicons'

" COLORSCHEMES
Plug 'morhetz/gruvbox'
call plug#end()
